
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
typedef TYPE_2__ zend_object_iterator ;
struct TYPE_5__ {int * (* get_current_data ) (TYPE_2__*) ;} ;


 scalar_t__ EG (int ) ;
 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_STOP ;
 int Z_TRY_ADDREF_P (int *) ;
 int add_next_index_zval (int *,int *) ;
 int exception ;
 int * stub1 (TYPE_2__*) ;

__attribute__((used)) static int spl_iterator_to_values_apply(zend_object_iterator *iter, void *puser)
{
 zval *data, *return_value = (zval*)puser;

 data = iter->funcs->get_current_data(iter);
 if (EG(exception)) {
  return ZEND_HASH_APPLY_STOP;
 }
 if (data == ((void*)0)) {
  return ZEND_HASH_APPLY_STOP;
 }
 Z_TRY_ADDREF_P(data);
 add_next_index_zval(return_value, data);
 return ZEND_HASH_APPLY_KEEP;
}
