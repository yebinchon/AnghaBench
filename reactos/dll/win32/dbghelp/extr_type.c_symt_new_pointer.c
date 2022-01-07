
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tag; } ;
struct symt_pointer {unsigned long size; TYPE_1__ symt; struct symt* pointsto; } ;
struct symt {int dummy; } ;
struct module {int pool; } ;


 int SymTagPointerType ;
 struct symt_pointer* pool_alloc (int *,int) ;
 int symt_add_type (struct module*,TYPE_1__*) ;

struct symt_pointer* symt_new_pointer(struct module* module, struct symt* ref_type, unsigned long size)
{
    struct symt_pointer* sym;

    if ((sym = pool_alloc(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = SymTagPointerType;
        sym->pointsto = ref_type;
        sym->size = size;
        symt_add_type(module, &sym->symt);
    }
    return sym;
}
