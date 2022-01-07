
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defname; int * arg; } ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;

 char* defGetString (TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int intVal (int *) ;
 int nodeTag (int *) ;
 int pg_strcasecmp (char*,char*) ;

bool
defGetBoolean(DefElem *def)
{



 if (def->arg == ((void*)0))
  return 1;




 switch (nodeTag(def->arg))
 {
  case 128:
   switch (intVal(def->arg))
   {
    case 0:
     return 0;
    case 1:
     return 1;
    default:

     break;
   }
   break;
  default:
   {
    char *sval = defGetString(def);





    if (pg_strcasecmp(sval, "true") == 0)
     return 1;
    if (pg_strcasecmp(sval, "false") == 0)
     return 0;
    if (pg_strcasecmp(sval, "on") == 0)
     return 1;
    if (pg_strcasecmp(sval, "off") == 0)
     return 0;
   }
   break;
 }
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    errmsg("%s requires a Boolean value",
     def->defname)));
 return 0;
}
