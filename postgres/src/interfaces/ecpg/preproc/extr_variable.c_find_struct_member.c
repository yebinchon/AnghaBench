
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct variable {int dummy; } ;
struct ECPGstruct_member {TYPE_5__* type; int name; struct ECPGstruct_member* next; } ;
struct TYPE_9__ {struct ECPGstruct_member* members; TYPE_3__* element; } ;
struct TYPE_10__ {int type; TYPE_4__ u; int counter; int size; int struct_sizeof; int type_name; } ;
struct TYPE_7__ {struct ECPGstruct_member* members; TYPE_1__* element; } ;
struct TYPE_8__ {int type; TYPE_2__ u; int counter; int size; int struct_sizeof; int type_name; } ;
struct TYPE_6__ {int type; int counter; int size; } ;


 int ECPGmake_array_type (int ,int ) ;
 int ECPGmake_simple_type (int,int ,int ) ;
 int ECPGmake_struct_type (struct ECPGstruct_member*,int,int ,int ) ;



 int PARSE_ERROR ;
 int mmfatal (int ,char*,char*) ;
 struct variable* new_variable (char*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static struct variable *
find_struct_member(char *name, char *str, struct ECPGstruct_member *members, int brace_level)
{
 char *next = strpbrk(++str, ".-["),
      *end,
    c = '\0';

 if (next != ((void*)0))
 {
  c = *next;
  *next = '\0';
 }

 for (; members; members = members->next)
 {
  if (strcmp(members->name, str) == 0)
  {
   if (next == ((void*)0))
   {

    switch (members->type->type)
    {
     case 130:
      return new_variable(name, ECPGmake_array_type(ECPGmake_simple_type(members->type->u.element->type, members->type->u.element->size, members->type->u.element->counter), members->type->size), brace_level);
     case 129:
     case 128:
      return new_variable(name, ECPGmake_struct_type(members->type->u.members, members->type->type, members->type->type_name, members->type->struct_sizeof), brace_level);
     default:
      return new_variable(name, ECPGmake_simple_type(members->type->type, members->type->size, members->type->counter), brace_level);
    }
   }
   else
   {
    *next = c;
    if (c == '[')
    {
     int count;





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
    }
    else
     end = next;

    switch (*end)
    {
     case '\0':

      if (members->type->type != 130)
       mmfatal(PARSE_ERROR, "incorrectly formed variable \"%s\"", name);

      switch (members->type->u.element->type)
      {
       case 130:
        return new_variable(name, ECPGmake_array_type(ECPGmake_simple_type(members->type->u.element->u.element->type, members->type->u.element->u.element->size, members->type->u.element->u.element->counter), members->type->u.element->size), brace_level);
       case 129:
       case 128:
        return new_variable(name, ECPGmake_struct_type(members->type->u.element->u.members, members->type->u.element->type, members->type->u.element->type_name, members->type->u.element->struct_sizeof), brace_level);
       default:
        return new_variable(name, ECPGmake_simple_type(members->type->u.element->type, members->type->u.element->size, members->type->u.element->counter), brace_level);
      }
      break;
     case '-':
      if (members->type->type == 130)
       return find_struct_member(name, ++end, members->type->u.element->u.members, brace_level);
      else
       return find_struct_member(name, ++end, members->type->u.members, brace_level);
      break;
      break;
     case '.':
      if (members->type->type == 130)
       return find_struct_member(name, end, members->type->u.element->u.members, brace_level);
      else
       return find_struct_member(name, end, members->type->u.members, brace_level);
      break;
     default:
      mmfatal(PARSE_ERROR, "incorrectly formed variable \"%s\"", name);
      break;
    }
   }
  }
 }

 return ((void*)0);
}
