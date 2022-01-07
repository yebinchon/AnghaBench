
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int List ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ LookupFuncName (int *,int,scalar_t__*,int) ;
 int NIL ;
 int OBJECT_FUNCTION ;
 int OidIsValid (scalar_t__) ;
 scalar_t__ PROVOLATILE_IMMUTABLE ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int func_signature_string (int *,int,int ,scalar_t__*) ;
 scalar_t__ func_volatile (scalar_t__) ;
 int get_func_name (scalar_t__) ;
 scalar_t__ get_func_rettype (scalar_t__) ;
 scalar_t__ pg_proc_aclcheck (scalar_t__,int ,int ) ;

__attribute__((used)) static Oid
findRangeCanonicalFunction(List *procname, Oid typeOid)
{
 Oid argList[1];
 Oid procOid;
 AclResult aclresult;





 argList[0] = typeOid;

 procOid = LookupFuncName(procname, 1, argList, 1);

 if (!OidIsValid(procOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function %s does not exist",
      func_signature_string(procname, 1, NIL, argList))));

 if (get_func_rettype(procOid) != typeOid)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("range canonical function %s must return range type",
      func_signature_string(procname, 1, NIL, argList))));

 if (func_volatile(procOid) != PROVOLATILE_IMMUTABLE)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("range canonical function %s must be immutable",
      func_signature_string(procname, 1, NIL, argList))));


 aclresult = pg_proc_aclcheck(procOid, GetUserId(), ACL_EXECUTE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FUNCTION, get_func_name(procOid));

 return procOid;
}
