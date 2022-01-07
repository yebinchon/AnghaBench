
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ num_traits; int ce_flags; int name; TYPE_1__* trait_names; } ;
typedef TYPE_2__ zend_class_entry ;
typedef size_t uint32_t ;
struct TYPE_20__ {int lc_name; int name; } ;
typedef TYPE_2__ HashTable ;


 int E_ERROR ;
 scalar_t__ UNEXPECTED (int) ;
 int ZEND_ACC_TRAIT ;
 int ZEND_ASSERT (int) ;
 int ZEND_FETCH_CLASS_TRAIT ;
 int ZSTR_VAL (int ) ;
 int efree (TYPE_2__**) ;
 TYPE_2__** emalloc (int) ;
 int zend_do_check_for_inconsistent_traits_aliasing (TYPE_2__*,TYPE_2__**) ;
 int zend_do_traits_method_binding (TYPE_2__*,TYPE_2__**,TYPE_2__**,TYPE_2__**) ;
 int zend_do_traits_property_binding (TYPE_2__*,TYPE_2__**) ;
 int zend_error_noreturn (int ,char*,int ,int ) ;
 TYPE_2__* zend_fetch_class_by_name (int ,int ,int ) ;
 int zend_traits_init_trait_structures (TYPE_2__*,TYPE_2__**,TYPE_2__***,TYPE_2__***) ;

__attribute__((used)) static void zend_do_bind_traits(zend_class_entry *ce)
{
 HashTable **exclude_tables;
 zend_class_entry **aliases;
 zend_class_entry **traits, *trait;
 uint32_t i, j;

 ZEND_ASSERT(ce->num_traits > 0);

 traits = emalloc(sizeof(zend_class_entry*) * ce->num_traits);

 for (i = 0; i < ce->num_traits; i++) {
  trait = zend_fetch_class_by_name(ce->trait_names[i].name,
   ce->trait_names[i].lc_name, ZEND_FETCH_CLASS_TRAIT);
  if (UNEXPECTED(trait == ((void*)0))) {
   return;
  }
  if (UNEXPECTED(!(trait->ce_flags & ZEND_ACC_TRAIT))) {
   zend_error_noreturn(E_ERROR, "%s cannot use %s - it is not a trait", ZSTR_VAL(ce->name), ZSTR_VAL(trait->name));
   return;
  }
  for (j = 0; j < i; j++) {
   if (traits[j] == trait) {

    trait = ((void*)0);
    break;
   }
  }
  traits[i] = trait;
 }


 zend_traits_init_trait_structures(ce, traits, &exclude_tables, &aliases);


 zend_do_traits_method_binding(ce, traits, exclude_tables, aliases);


 zend_do_check_for_inconsistent_traits_aliasing(ce, aliases);

 if (aliases) {
  efree(aliases);
 }

 if (exclude_tables) {
  efree(exclude_tables);
 }


 zend_do_traits_property_binding(ce, traits);

 efree(traits);
}
