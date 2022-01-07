
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {int * arg; int defname; } ;
typedef int List ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 char* NameListToString (int *) ;






 char* TypeNameToString (int *) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ intVal (int *) ;
 int nodeTag (int *) ;
 char* psprintf (char*,long) ;
 char* pstrdup (char*) ;
 char* strVal (int *) ;

char *
defGetString(DefElem *def)
{
 if (def->arg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s requires a parameter",
      def->defname)));
 switch (nodeTag(def->arg))
 {
  case 131:
   return psprintf("%ld", (long) intVal(def->arg));
  case 132:





   return strVal(def->arg);
  case 129:
   return strVal(def->arg);
  case 128:
   return TypeNameToString((TypeName *) def->arg);
  case 130:
   return NameListToString((List *) def->arg);
  case 133:
   return pstrdup("*");
  default:
   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(def->arg));
 }
 return ((void*)0);
}
