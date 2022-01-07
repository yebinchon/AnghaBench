
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int brace_level; struct variable* next; struct ECPGtype* type; int name; } ;
struct ECPGtype {int dummy; } ;


 struct variable* allvariables ;
 scalar_t__ mm_alloc (int) ;
 int mm_strdup (char const*) ;

struct variable *
new_variable(const char *name, struct ECPGtype *type, int brace_level)
{
 struct variable *p = (struct variable *) mm_alloc(sizeof(struct variable));

 p->name = mm_strdup(name);
 p->type = type;
 p->brace_level = brace_level;

 p->next = allvariables;
 allvariables = p;

 return p;
}
