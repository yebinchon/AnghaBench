
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int defname; int * arg; } ;
typedef TYPE_1__ DefElem ;


 int CStringGetDatum (int ) ;
 int DatumGetInt64 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;


 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int int8in ;
 int intVal (int *) ;
 int nodeTag (int *) ;
 int strVal (int *) ;

int64
defGetInt64(DefElem *def)
{
 if (def->arg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s requires a numeric value",
      def->defname)));
 switch (nodeTag(def->arg))
 {
  case 128:
   return (int64) intVal(def->arg);
  case 129:






   return DatumGetInt64(DirectFunctionCall1(int8in,
              CStringGetDatum(strVal(def->arg))));
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("%s requires a numeric value",
       def->defname)));
 }
 return 0;
}
