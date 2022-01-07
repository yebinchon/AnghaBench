
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; } ;
struct TYPE_4__ {int * name; } ;
struct symt_basic {int bt; unsigned int size; TYPE_1__ symt; TYPE_2__ hash_elt; } ;
struct module {int ht_types; int pool; } ;
typedef enum BasicType { ____Placeholder_BasicType } BasicType ;


 int SymTagBaseType ;
 int hash_table_add (int *,TYPE_2__*) ;
 struct symt_basic* pool_alloc (int *,int) ;
 int * pool_strdup (int *,char const*) ;
 int symt_add_type (struct module*,TYPE_1__*) ;
 scalar_t__ symt_find_type_by_name (struct module*,int ,char const*) ;

struct symt_basic* symt_new_basic(struct module* module, enum BasicType bt,
                                  const char* typename, unsigned size)
{
    struct symt_basic* sym;

    if (typename)
    {
        sym = (struct symt_basic*)symt_find_type_by_name(module, SymTagBaseType,
                                                         typename);
        if (sym && sym->bt == bt && sym->size == size)
            return sym;
    }
    if ((sym = pool_alloc(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = SymTagBaseType;
        if (typename)
        {
            sym->hash_elt.name = pool_strdup(&module->pool, typename);
            hash_table_add(&module->ht_types, &sym->hash_elt);
        } else sym->hash_elt.name = ((void*)0);
        sym->bt = bt;
        sym->size = size;
        symt_add_type(module, &sym->symt);
    }
    return sym;
}
