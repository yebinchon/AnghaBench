
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {int defname; int * arg; } ;
typedef TYPE_1__ DefElem ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;


 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int list_make1 (int *) ;
 int * makeTypeNameFromNameList (int ) ;
 int nodeTag (int *) ;

TypeName *
defGetTypeName(DefElem *def)
{
 if (def->arg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("%s requires a parameter",
      def->defname)));
 switch (nodeTag(def->arg))
 {
  case 128:
   return (TypeName *) def->arg;
  case 129:

   return makeTypeNameFromNameList(list_make1(def->arg));
  default:
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("argument of %s must be a type name",
       def->defname)));
 }
 return ((void*)0);
}
