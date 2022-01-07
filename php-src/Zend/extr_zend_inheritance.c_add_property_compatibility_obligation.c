
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_property_info ;
typedef int zend_class_entry ;
struct TYPE_4__ {int const* parent_prop; int const* child_prop; int type; } ;
typedef TYPE_1__ variance_obligation ;
typedef int HashTable ;


 int OBLIGATION_PROPERTY_COMPATIBILITY ;
 TYPE_1__* emalloc (int) ;
 int * get_or_init_obligations_for_class (int *) ;
 int zend_hash_next_index_insert_ptr (int *,TYPE_1__*) ;

__attribute__((used)) static void add_property_compatibility_obligation(
  zend_class_entry *ce, const zend_property_info *child_prop,
  const zend_property_info *parent_prop) {
 HashTable *obligations = get_or_init_obligations_for_class(ce);
 variance_obligation *obligation = emalloc(sizeof(variance_obligation));
 obligation->type = OBLIGATION_PROPERTY_COMPATIBILITY;
 obligation->child_prop = child_prop;
 obligation->parent_prop = parent_prop;
 zend_hash_next_index_insert_ptr(obligations, obligation);
}
