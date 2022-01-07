
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tag; } ;
struct symt_enum {int vchildren; struct symt* base_type; int * name; TYPE_1__ symt; } ;
struct symt {int dummy; } ;
struct module {int pool; } ;


 int SymTagEnum ;
 struct symt_enum* pool_alloc (int *,int) ;
 int * pool_strdup (int *,char const*) ;
 int vector_init (int *,int,int) ;

struct symt_enum* symt_new_enum(struct module* module, const char* typename,
                                struct symt* basetype)
{
    struct symt_enum* sym;

    if ((sym = pool_alloc(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = SymTagEnum;
        sym->name = (typename) ? pool_strdup(&module->pool, typename) : ((void*)0);
        sym->base_type = basetype;
        vector_init(&sym->vchildren, sizeof(struct symt*), 8);
    }
    return sym;
}
