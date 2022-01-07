
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct variable {int brace_level; TYPE_5__* type; } ;
struct TYPE_9__ {TYPE_3__* element; } ;
struct TYPE_10__ {TYPE_4__ u; } ;
struct TYPE_7__ {int members; TYPE_1__* element; } ;
struct TYPE_8__ {int type; int counter; int size; int struct_sizeof; int type_name; TYPE_2__ u; } ;
struct TYPE_6__ {int type; int counter; int size; } ;


 int ECPGmake_array_type (int ,int ) ;
 int ECPGmake_simple_type (int,int ,int ) ;
 int ECPGmake_struct_type (int ,int,int ,int ) ;



 int PARSE_ERROR ;
 struct variable* find_simple (char*) ;
 struct variable* find_struct (char*,char*,char*) ;
 int mmfatal (int ,char*,char*) ;
 struct variable* new_variable (char*,int ,int ) ;
 char* strpbrk (char*,char*) ;

struct variable *
find_variable(char *name)
{
 char *next,
      *end;
 struct variable *p;
 int count;

 next = strpbrk(name, ".[-");
 if (next)
 {
  if (*next == '[')
  {




   for (count = 1, end = next + 1; count; end++)
   {
    switch (*end)
    {
     case '[':
      count++;
      break;
     case ']':
      count--;
      break;
     default:
      break;
    }
   }
   if (*end == '.')
    p = find_struct(name, next, end);
   else
   {
    char c = *next;

    *next = '\0';
    p = find_simple(name);
    if (p == ((void*)0))
     mmfatal(PARSE_ERROR, "variable \"%s\" is not declared", name);

    *next = c;
    switch (p->type->u.element->type)
    {
     case 130:
      return new_variable(name, ECPGmake_array_type(ECPGmake_simple_type(p->type->u.element->u.element->type, p->type->u.element->u.element->size, p->type->u.element->u.element->counter), p->type->u.element->size), p->brace_level);
     case 129:
     case 128:
      return new_variable(name, ECPGmake_struct_type(p->type->u.element->u.members, p->type->u.element->type, p->type->u.element->type_name, p->type->u.element->struct_sizeof), p->brace_level);
     default:
      return new_variable(name, ECPGmake_simple_type(p->type->u.element->type, p->type->u.element->size, p->type->u.element->counter), p->brace_level);
    }
   }
  }
  else
   p = find_struct(name, next, next);
 }
 else
  p = find_simple(name);

 if (p == ((void*)0))
  mmfatal(PARSE_ERROR, "variable \"%s\" is not declared", name);

 return p;
}
