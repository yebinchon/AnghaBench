
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {int inf; int obj; } ;
typedef TYPE_2__ spl_SplObjectStorageElement ;
struct TYPE_10__ {int flags; int pos; int storage; } ;
typedef TYPE_3__ spl_SplObjectStorage ;
struct TYPE_11__ {TYPE_1__* iterator_funcs_ptr; } ;
struct TYPE_8__ {int zf_key; int zf_current; int zf_valid; } ;


 int EG (int ) ;


 int IS_TRUE ;
 int MIT_KEYS_ASSOC ;
 int MIT_NEED_ALL ;
 int RETURN_FALSE ;
 int SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT ;
 int ZVAL_NULL (int *) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 int Z_LVAL (int ) ;
 TYPE_5__* Z_OBJCE_P (int *) ;
 int Z_OBJ_P (int *) ;
 int Z_STR (int ) ;
 int Z_TYPE (int ) ;
 int add_index_zval (int *,int ,int *) ;
 int add_next_index_zval (int *,int *) ;
 int array_init_size (int *,int) ;
 int exception ;
 int spl_ce_InvalidArgumentException ;
 int spl_ce_RuntimeException ;
 int zend_call_method_with_0_params (int ,TYPE_5__*,int *,char*,int *) ;
 TYPE_2__* zend_hash_get_current_data_ptr_ex (int *,int *) ;
 int zend_hash_internal_pointer_reset_ex (int *,int *) ;
 int zend_hash_move_forward_ex (int *,int *) ;
 int zend_hash_num_elements (int *) ;
 int zend_symtable_update (int ,int ,int *) ;
 int zend_throw_exception (int ,char*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_multiple_iterator_get_all(spl_SplObjectStorage *intern, int get_type, zval *return_value)
{
 spl_SplObjectStorageElement *element;
 zval *it, retval;
 int valid = 1, num_elements;

 num_elements = zend_hash_num_elements(&intern->storage);
 if (num_elements < 1) {
  RETURN_FALSE;
 }

 array_init_size(return_value, num_elements);

 zend_hash_internal_pointer_reset_ex(&intern->storage, &intern->pos);
 while ((element = zend_hash_get_current_data_ptr_ex(&intern->storage, &intern->pos)) != ((void*)0) && !EG(exception)) {
  it = &element->obj;
  zend_call_method_with_0_params(Z_OBJ_P(it), Z_OBJCE_P(it), &Z_OBJCE_P(it)->iterator_funcs_ptr->zf_valid, "valid", &retval);

  if (!Z_ISUNDEF(retval)) {
   valid = Z_TYPE(retval) == IS_TRUE;
   zval_ptr_dtor(&retval);
  } else {
   valid = 0;
  }

  if (valid) {
   if (SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT == get_type) {
    zend_call_method_with_0_params(Z_OBJ_P(it), Z_OBJCE_P(it), &Z_OBJCE_P(it)->iterator_funcs_ptr->zf_current, "current", &retval);
   } else {
    zend_call_method_with_0_params(Z_OBJ_P(it), Z_OBJCE_P(it), &Z_OBJCE_P(it)->iterator_funcs_ptr->zf_key, "key", &retval);
   }
   if (Z_ISUNDEF(retval)) {
    zend_throw_exception(spl_ce_RuntimeException, "Failed to call sub iterator method", 0);
    return;
   }
  } else if (intern->flags & MIT_NEED_ALL) {
   if (SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT == get_type) {
    zend_throw_exception(spl_ce_RuntimeException, "Called current() with non valid sub iterator", 0);
   } else {
    zend_throw_exception(spl_ce_RuntimeException, "Called key() with non valid sub iterator", 0);
   }
   return;
  } else {
   ZVAL_NULL(&retval);
  }

  if (intern->flags & MIT_KEYS_ASSOC) {
   switch (Z_TYPE(element->inf)) {
    case 129:
     add_index_zval(return_value, Z_LVAL(element->inf), &retval);
     break;
    case 128:
     zend_symtable_update(Z_ARRVAL_P(return_value), Z_STR(element->inf), &retval);
     break;
    default:
     zval_ptr_dtor(&retval);
     zend_throw_exception(spl_ce_InvalidArgumentException, "Sub-Iterator is associated with NULL", 0);
     return;
   }
  } else {
   add_next_index_zval(return_value, &retval);
  }

  zend_hash_move_forward_ex(&intern->storage, &intern->pos);
 }
}
