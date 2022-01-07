
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct variable {int brace_level; TYPE_4__* type; } ;
struct TYPE_7__ {TYPE_2__* element; int members; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_5__ {int members; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;


 scalar_t__ ECPGt_array ;
 scalar_t__ ECPGt_struct ;
 scalar_t__ ECPGt_union ;
 int PARSE_ERROR ;
 struct variable* find_struct_member (char*,char*,int ,int ) ;
 struct variable* find_variable (char*) ;
 int mmfatal (int ,char*,char*) ;

__attribute__((used)) static struct variable *
find_struct(char *name, char *next, char *end)
{
 struct variable *p;
 char c = *next;


 *next = '\0';
 p = find_variable(name);

 if (c == '-')
 {
  if (p->type->type != ECPGt_array)
   mmfatal(PARSE_ERROR, "variable \"%s\" is not a pointer", name);

  if (p->type->u.element->type != ECPGt_struct && p->type->u.element->type != ECPGt_union)
   mmfatal(PARSE_ERROR, "variable \"%s\" is not a pointer to a structure or a union", name);


  *next = c;

  return find_struct_member(name, ++end, p->type->u.element->u.members, p->brace_level);
 }
 else
 {
  if (next == end)
  {
   if (p->type->type != ECPGt_struct && p->type->type != ECPGt_union)
    mmfatal(PARSE_ERROR, "variable \"%s\" is neither a structure nor a union", name);


   *next = c;

   return find_struct_member(name, end, p->type->u.members, p->brace_level);
  }
  else
  {
   if (p->type->type != ECPGt_array)
    mmfatal(PARSE_ERROR, "variable \"%s\" is not an array", name);

   if (p->type->u.element->type != ECPGt_struct && p->type->u.element->type != ECPGt_union)
    mmfatal(PARSE_ERROR, "variable \"%s\" is not a pointer to a structure or a union", name);


   *next = c;

   return find_struct_member(name, end, p->type->u.element->u.members, p->brace_level);
  }
 }
}
