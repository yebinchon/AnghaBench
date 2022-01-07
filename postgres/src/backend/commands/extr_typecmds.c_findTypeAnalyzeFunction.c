
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;


 scalar_t__ BOOLOID ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 int INTERNALOID ;
 int LookupFuncName (int *,int,int *,int) ;
 int NIL ;
 int NameListToString (int *) ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int func_signature_string (int *,int,int ,int *) ;
 scalar_t__ get_func_rettype (int ) ;

__attribute__((used)) static Oid
findTypeAnalyzeFunction(List *procname, Oid typeOid)
{
 Oid argList[1];
 Oid procOid;




 argList[0] = INTERNALOID;

 procOid = LookupFuncName(procname, 1, argList, 1);
 if (!OidIsValid(procOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function %s does not exist",
      func_signature_string(procname, 1, NIL, argList))));

 if (get_func_rettype(procOid) != BOOLOID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("type analyze function %s must return type %s",
      NameListToString(procname), "boolean")));

 return procOid;
}
