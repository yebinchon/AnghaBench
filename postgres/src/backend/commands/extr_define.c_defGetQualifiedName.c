
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * names; } ;
typedef TYPE_1__ TypeName ;
struct TYPE_5__ {int defname; int * arg; } ;
typedef int List ;
typedef TYPE_2__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int * NIL ;



 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int * list_make1 (int *) ;
 int nodeTag (int *) ;

List *
defGetQualifiedName(DefElem *def)
{
 if (def->arg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s requires a parameter",
      def->defname)));
 switch (nodeTag(def->arg))
 {
  case 128:
   return ((TypeName *) def->arg)->names;
  case 130:
   return (List *) def->arg;
  case 129:

   return list_make1(def->arg);
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("argument of %s must be a name",
       def->defname)));
 }
 return NIL;
}
