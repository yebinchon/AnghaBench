
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {TYPE_2__* funcs; } ;
typedef TYPE_3__ zend_object_iterator ;
struct TYPE_10__ {size_t level; TYPE_1__* iterators; } ;
typedef TYPE_4__ spl_recursive_it_object ;
struct TYPE_8__ {int * (* get_current_data ) (TYPE_3__*) ;} ;
struct TYPE_7__ {TYPE_3__* iterator; } ;


 scalar_t__ IS_ARRAY ;
 int RETVAL_INTERNED_STR (int ) ;
 int ZEND_STR_ARRAY_CAPITALIZED ;
 int ZSTR_KNOWN (int ) ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_DEREF (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int convert_to_string (int *) ;
 int * stub1 (TYPE_3__*) ;

__attribute__((used)) static void spl_recursive_tree_iterator_get_entry(spl_recursive_it_object *object, zval *return_value)
{
 zend_object_iterator *iterator = object->iterators[object->level].iterator;
 zval *data;

 data = iterator->funcs->get_current_data(iterator);
 if (data) {
  ZVAL_DEREF(data);

  if (Z_TYPE_P(data) == IS_ARRAY) {
   RETVAL_INTERNED_STR(ZSTR_KNOWN(ZEND_STR_ARRAY_CAPITALIZED));
  } else {
   ZVAL_COPY(return_value, data);
   convert_to_string(return_value);
  }
 }
}
