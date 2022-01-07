
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
typedef TYPE_2__ zend_object_iterator ;
struct TYPE_6__ {int (* get_current_key ) (TYPE_2__*,int *) ;int * (* get_current_data ) (TYPE_2__*) ;} ;


 scalar_t__ EG (int ) ;
 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_STOP ;
 int Z_ARRVAL_P (int *) ;
 int Z_TRY_ADDREF_P (int *) ;
 int add_next_index_zval (int *,int *) ;
 int array_set_zval_key (int ,int *,int *) ;
 int exception ;
 int * stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_iterator_to_array_apply(zend_object_iterator *iter, void *puser)
{
 zval *data, *return_value = (zval*)puser;

 data = iter->funcs->get_current_data(iter);
 if (EG(exception)) {
  return ZEND_HASH_APPLY_STOP;
 }
 if (data == ((void*)0)) {
  return ZEND_HASH_APPLY_STOP;
 }
 if (iter->funcs->get_current_key) {
  zval key;
  iter->funcs->get_current_key(iter, &key);
  if (EG(exception)) {
   return ZEND_HASH_APPLY_STOP;
  }
  array_set_zval_key(Z_ARRVAL_P(return_value), &key, data);
  zval_ptr_dtor(&key);
 } else {
  Z_TRY_ADDREF_P(data);
  add_next_index_zval(return_value, data);
 }
 return ZEND_HASH_APPLY_KEEP;
}
