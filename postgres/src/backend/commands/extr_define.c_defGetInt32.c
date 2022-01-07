
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int defname; int * arg; } ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;

 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int intVal (int *) ;
 int nodeTag (int *) ;

int32
defGetInt32(DefElem *def)
{
 if (def->arg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s requires an integer value",
      def->defname)));
 switch (nodeTag(def->arg))
 {
  case 128:
   return (int32) intVal(def->arg);
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("%s requires an integer value",
       def->defname)));
 }
 return 0;
}
