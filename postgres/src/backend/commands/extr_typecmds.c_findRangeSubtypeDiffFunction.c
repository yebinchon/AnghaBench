
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ FLOAT8OID ;
 int GetUserId () ;
 int LookupFuncName (int *,int,int *,int) ;
 int NIL ;
 int OBJECT_FUNCTION ;
 int OidIsValid (int ) ;
 scalar_t__ PROVOLATILE_IMMUTABLE ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int func_signature_string (int *,int,int ,int *) ;
 scalar_t__ func_volatile (int ) ;
 int get_func_name (int ) ;
 scalar_t__ get_func_rettype (int ) ;
 scalar_t__ pg_proc_aclcheck (int ,int ,int ) ;

__attribute__((used)) static Oid
findRangeSubtypeDiffFunction(List *procname, Oid subtype)
{
 Oid argList[2];
 Oid procOid;
 AclResult aclresult;





 argList[0] = subtype;
 argList[1] = subtype;

 procOid = LookupFuncName(procname, 2, argList, 1);

 if (!OidIsValid(procOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function %s does not exist",
      func_signature_string(procname, 2, NIL, argList))));

 if (get_func_rettype(procOid) != FLOAT8OID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("range subtype diff function %s must return type %s",
      func_signature_string(procname, 2, NIL, argList),
      "double precision")));

 if (func_volatile(procOid) != PROVOLATILE_IMMUTABLE)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("range subtype diff function %s must be immutable",
      func_signature_string(procname, 2, NIL, argList))));


 aclresult = pg_proc_aclcheck(procOid, GetUserId(), ACL_EXECUTE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FUNCTION, get_func_name(procOid));

 return procOid;
}
