
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int INT4OID ;
 int INTERNALOID ;
 int InvalidOid ;
 int LookupFuncName (int *,int,int *,int) ;
 int NIL ;
 int OIDOID ;
 scalar_t__ OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int func_signature_string (int *,int,int ,int *) ;

__attribute__((used)) static Oid
findTypeReceiveFunction(List *procname, Oid typeOid)
{
 Oid argList[3];
 Oid procOid;





 argList[0] = INTERNALOID;

 procOid = LookupFuncName(procname, 1, argList, 1);
 if (OidIsValid(procOid))
  return procOid;

 argList[1] = OIDOID;
 argList[2] = INT4OID;

 procOid = LookupFuncName(procname, 3, argList, 1);
 if (OidIsValid(procOid))
  return procOid;

 ereport(ERROR,
   (errcode(ERRCODE_UNDEFINED_FUNCTION),
    errmsg("function %s does not exist",
     func_signature_string(procname, 1, NIL, argList))));

 return InvalidOid;
}
