
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int List ;
typedef int DefElem ;
typedef int Datum ;




 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 scalar_t__ INTERNALOID ;
 scalar_t__ LookupFuncName (int *,int,scalar_t__*,int) ;
 int NIL ;
 int ObjectIdGetDatum (scalar_t__) ;
 int * defGetQualifiedName (int *) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int format_type_be (scalar_t__) ;
 int func_signature_string (int *,int,int ,scalar_t__*) ;
 scalar_t__ get_func_rettype (scalar_t__) ;

__attribute__((used)) static Datum
get_ts_template_func(DefElem *defel, int attnum)
{
 List *funcName = defGetQualifiedName(defel);
 Oid typeId[4];
 Oid retTypeId;
 int nargs;
 Oid procOid;

 retTypeId = INTERNALOID;
 typeId[0] = INTERNALOID;
 typeId[1] = INTERNALOID;
 typeId[2] = INTERNALOID;
 typeId[3] = INTERNALOID;
 switch (attnum)
 {
  case 129:
   nargs = 1;
   break;
  case 128:
   nargs = 4;
   break;
  default:

   elog(ERROR, "unrecognized attribute for text search template: %d",
     attnum);
   nargs = 0;
 }

 procOid = LookupFuncName(funcName, nargs, typeId, 0);
 if (get_func_rettype(procOid) != retTypeId)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("function %s should return type %s",
      func_signature_string(funcName, nargs, NIL, typeId),
      format_type_be(retTypeId))));

 return ObjectIdGetDatum(procOid);
}
