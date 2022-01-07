
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int defname; int * arg; } ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;


 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 double floatVal (int *) ;
 scalar_t__ intVal (int *) ;
 int nodeTag (int *) ;

double
defGetNumeric(DefElem *def)
{
 if (def->arg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s requires a numeric value",
      def->defname)));
 switch (nodeTag(def->arg))
 {
  case 128:
   return (double) intVal(def->arg);
  case 129:
   return floatVal(def->arg);
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("%s requires a numeric value",
       def->defname)));
 }
 return 0;
}
