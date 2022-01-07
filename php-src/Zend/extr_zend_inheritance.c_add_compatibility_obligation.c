
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_function ;
typedef int zend_class_entry ;
struct TYPE_4__ {int const* parent_fn; int const* child_fn; int type; } ;
typedef TYPE_1__ variance_obligation ;
typedef int HashTable ;


 int OBLIGATION_COMPATIBILITY ;
 TYPE_1__* emalloc (int) ;
 int * get_or_init_obligations_for_class (int *) ;
 int zend_hash_next_index_insert_ptr (int *,TYPE_1__*) ;

__attribute__((used)) static void add_compatibility_obligation(
  zend_class_entry *ce, const zend_function *child_fn, const zend_function *parent_fn) {
 HashTable *obligations = get_or_init_obligations_for_class(ce);
 variance_obligation *obligation = emalloc(sizeof(variance_obligation));
 obligation->type = OBLIGATION_COMPATIBILITY;
 obligation->child_fn = child_fn;
 obligation->parent_fn = parent_fn;
 zend_hash_next_index_insert_ptr(obligations, obligation);
}
