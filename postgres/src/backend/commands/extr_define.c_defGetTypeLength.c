
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_4__ {int defname; int * arg; } ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;





 int TypeNameToString (int *) ;
 int defGetString (TYPE_1__*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int intVal (int *) ;
 int nodeTag (int *) ;
 int pg_strcasecmp (int ,char*) ;
 int strVal (int *) ;

int
defGetTypeLength(DefElem *def)
{
 if (def->arg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s requires a parameter",
      def->defname)));
 switch (nodeTag(def->arg))
 {
  case 131:
   return intVal(def->arg);
  case 132:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("%s requires an integer value",
       def->defname)));
   break;
  case 129:
   if (pg_strcasecmp(strVal(def->arg), "variable") == 0)
    return -1;
   break;
  case 128:

   if (pg_strcasecmp(TypeNameToString((TypeName *) def->arg),
         "variable") == 0)
    return -1;
   break;
  case 130:

   break;
  default:
   elog(ERROR, "unrecognized node type: %d", (int) nodeTag(def->arg));
 }
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    errmsg("invalid argument for %s: \"%s\"",
     def->defname, defGetString(def))));
 return 0;
}
