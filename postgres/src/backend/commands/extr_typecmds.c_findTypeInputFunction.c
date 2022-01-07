
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 int CSTRINGOID ;
 int CommandCounterIncrement () ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int INT4OID ;
 int InvalidOid ;
 int LookupFuncName (int *,int,int *,int) ;
 int NIL ;
 int NameListToString (int *) ;
 int OIDOID ;
 int OPAQUEOID ;
 scalar_t__ OidIsValid (int ) ;
 int SetFunctionArgType (int ,int ,int ) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int func_signature_string (int *,int,int ,int *) ;

__attribute__((used)) static Oid
findTypeInputFunction(List *procname, Oid typeOid)
{
 Oid argList[3];
 Oid procOid;
 argList[0] = CSTRINGOID;

 procOid = LookupFuncName(procname, 1, argList, 1);
 if (OidIsValid(procOid))
  return procOid;

 argList[1] = OIDOID;
 argList[2] = INT4OID;

 procOid = LookupFuncName(procname, 3, argList, 1);
 if (OidIsValid(procOid))
  return procOid;


 argList[0] = OPAQUEOID;

 procOid = LookupFuncName(procname, 1, argList, 1);

 if (!OidIsValid(procOid))
 {
  argList[1] = OIDOID;
  argList[2] = INT4OID;

  procOid = LookupFuncName(procname, 3, argList, 1);
 }

 if (OidIsValid(procOid))
 {

  ereport(WARNING,
    (errmsg("changing argument type of function %s from \"opaque\" to \"cstring\"",
      NameListToString(procname))));
  SetFunctionArgType(procOid, 0, CSTRINGOID);





  CommandCounterIncrement();

  return procOid;
 }


 argList[0] = CSTRINGOID;

 ereport(ERROR,
   (errcode(ERRCODE_UNDEFINED_FUNCTION),
    errmsg("function %s does not exist",
     func_signature_string(procname, 1, NIL, argList))));

 return InvalidOid;
}
