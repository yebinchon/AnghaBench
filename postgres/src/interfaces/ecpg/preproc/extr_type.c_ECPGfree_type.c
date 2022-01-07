
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int members; struct ECPGtype* element; } ;
struct ECPGtype {int type; TYPE_1__ u; } ;


 int ECPGfree_struct_member (int ) ;



 int ET_ERROR ;
 int IS_SIMPLE_TYPE (int) ;
 int PARSE_ERROR ;
 int base_yyerror (char*) ;
 int free (struct ECPGtype*) ;
 int mmerror (int ,int ,char*,int) ;

void
ECPGfree_type(struct ECPGtype *type)
{
 if (!IS_SIMPLE_TYPE(type->type))
 {
  switch (type->type)
  {
   case 130:
    switch (type->u.element->type)
    {
     case 130:
      base_yyerror("internal error: found multidimensional array\n");
      break;
     case 129:
     case 128:

      ECPGfree_struct_member(type->u.element->u.members);
      free(type->u.element);
      break;
     default:
      if (!IS_SIMPLE_TYPE(type->u.element->type))
       base_yyerror("internal error: unknown datatype, please report this to <pgsql-bugs@lists.postgresql.org>");

      free(type->u.element);
    }
    break;
   case 129:
   case 128:
    ECPGfree_struct_member(type->u.members);
    break;
   default:
    mmerror(PARSE_ERROR, ET_ERROR, "unrecognized variable type code %d", type->type);
    break;
  }
 }
 free(type);
}
