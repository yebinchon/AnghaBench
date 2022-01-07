
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tag; } ;
struct symt_array {int start; int end; TYPE_1__ symt; struct symt* index_type; struct symt* base_type; } ;
struct symt {int dummy; } ;
struct module {int pool; } ;


 int SymTagArrayType ;
 struct symt_array* pool_alloc (int *,int) ;
 int symt_add_type (struct module*,TYPE_1__*) ;

struct symt_array* symt_new_array(struct module* module, int min, int max,
                                  struct symt* base, struct symt* index)
{
    struct symt_array* sym;

    if ((sym = pool_alloc(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = SymTagArrayType;
        sym->start = min;
        sym->end = max;
        sym->base_type = base;
        sym->index_type = index;
        symt_add_type(module, &sym->symt);
    }
    return sym;
}
