
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int List ;
typedef int DefElem ;


 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERROR ;
 scalar_t__ INTERNALOID ;
 scalar_t__ LookupFuncName (int *,int,scalar_t__*,int) ;
 int NIL ;
 int NameListToString (int *) ;
 int OidIsValid (scalar_t__) ;
 int * defGetQualifiedName (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int func_signature_string (int *,int,int ,scalar_t__*) ;
 scalar_t__ get_func_rettype (scalar_t__) ;
 int superuser () ;

__attribute__((used)) static Oid
interpret_func_support(DefElem *defel)
{
 List *procName = defGetQualifiedName(defel);
 Oid procOid;
 Oid argList[1];





 argList[0] = INTERNALOID;

 procOid = LookupFuncName(procName, 1, argList, 1);
 if (!OidIsValid(procOid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("function %s does not exist",
      func_signature_string(procName, 1, NIL, argList))));

 if (get_func_rettype(procOid) != INTERNALOID)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("support function %s must return type %s",
      NameListToString(procName), "internal")));






 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("must be superuser to specify a support function")));

 return procOid;
}
