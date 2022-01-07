
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; } ;
struct TYPE_4__ {int name; } ;
struct symt_typedef {TYPE_1__ symt; TYPE_2__ hash_elt; struct symt* type; } ;
struct symt {int dummy; } ;
struct module {int ht_types; int pool; } ;


 int SymTagTypedef ;
 int hash_table_add (int *,TYPE_2__*) ;
 struct symt_typedef* pool_alloc (int *,int) ;
 int pool_strdup (int *,char const*) ;
 int symt_add_type (struct module*,TYPE_1__*) ;

struct symt_typedef* symt_new_typedef(struct module* module, struct symt* ref,
                                      const char* name)
{
    struct symt_typedef* sym;

    if ((sym = pool_alloc(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = SymTagTypedef;
        sym->type = ref;
        sym->hash_elt.name = pool_strdup(&module->pool, name);
        hash_table_add(&module->ht_types, &sym->hash_elt);
        symt_add_type(module, &sym->symt);
    }
    return sym;
}
