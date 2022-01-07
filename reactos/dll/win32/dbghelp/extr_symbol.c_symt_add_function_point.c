
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symt {int tag; } ;
struct TYPE_2__ {int * name; } ;
struct location {int dummy; } ;
struct symt_hierarchy_point {struct symt symt; TYPE_1__ hash_elt; struct location loc; int * parent; } ;
struct symt_function {int vchildren; int symt; } ;
struct module {int pool; } ;
typedef enum SymTagEnum { ____Placeholder_SymTagEnum } SymTagEnum ;


 struct symt_hierarchy_point* pool_alloc (int *,int) ;
 int * pool_strdup (int *,char const*) ;
 struct symt** vector_add (int *,int *) ;

struct symt_hierarchy_point* symt_add_function_point(struct module* module,
                                                     struct symt_function* func,
                                                     enum SymTagEnum point,
                                                     const struct location* loc,
                                                     const char* name)
{
    struct symt_hierarchy_point*sym;
    struct symt** p;

    if ((sym = pool_alloc(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = point;
        sym->parent = &func->symt;
        sym->loc = *loc;
        sym->hash_elt.name = name ? pool_strdup(&module->pool, name) : ((void*)0);
        p = vector_add(&func->vchildren, &module->pool);
        *p = &sym->symt;
    }
    return sym;
}
