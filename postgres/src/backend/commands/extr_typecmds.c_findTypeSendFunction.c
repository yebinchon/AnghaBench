
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int InvalidOid ;
 int LookupFuncName (int *,int,int *,int) ;
 int NIL ;
 scalar_t__ OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int func_signature_string (int *,int,int ,int *) ;

__attribute__((used)) static Oid
findTypeSendFunction(List *procname, Oid typeOid)
{
 Oid argList[1];
 Oid procOid;




 argList[0] = typeOid;

 procOid = LookupFuncName(procname, 1, argList, 1);
 if (OidIsValid(procOid))
  return procOid;

 ereport(ERROR,
   (errcode(ERRCODE_UNDEFINED_FUNCTION),
    errmsg("function %s does not exist",
     func_signature_string(procname, 1, NIL, argList))));

 return InvalidOid;
}
