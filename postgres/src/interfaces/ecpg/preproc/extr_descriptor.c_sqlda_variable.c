
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct variable {int * next; scalar_t__ brace_level; struct ECPGtype* type; int name; } ;
struct TYPE_2__ {int * element; } ;
struct ECPGtype {scalar_t__ counter; TYPE_1__ u; int * struct_sizeof; int * size; int type; } ;


 int ECPGt_sqlda ;
 scalar_t__ mm_alloc (int) ;
 int mm_strdup (char const*) ;

struct variable *
sqlda_variable(const char *name)
{
 struct variable *p = (struct variable *) mm_alloc(sizeof(struct variable));

 p->name = mm_strdup(name);
 p->type = (struct ECPGtype *) mm_alloc(sizeof(struct ECPGtype));
 p->type->type = ECPGt_sqlda;
 p->type->size = ((void*)0);
 p->type->struct_sizeof = ((void*)0);
 p->type->u.element = ((void*)0);
 p->type->counter = 0;
 p->brace_level = 0;
 p->next = ((void*)0);

 return p;
}
