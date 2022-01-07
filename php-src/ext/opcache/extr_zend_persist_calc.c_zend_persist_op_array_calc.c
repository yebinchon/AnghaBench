
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_6__ {scalar_t__ corrupted; } ;


 int ADD_ARENA_SIZE (int) ;
 int ADD_SIZE (int) ;
 TYPE_4__* ZCG (int ) ;
 int ZEND_ASSERT (int) ;
 scalar_t__ ZEND_USER_FUNCTION ;
 TYPE_1__* Z_PTR_P (int *) ;
 int current_persistent_script ;
 int zend_persist_op_array_calc_ex (TYPE_1__*) ;

__attribute__((used)) static void zend_persist_op_array_calc(zval *zv)
{
 zend_op_array *op_array = Z_PTR_P(zv);

 ZEND_ASSERT(op_array->type == ZEND_USER_FUNCTION);
 ADD_SIZE(sizeof(zend_op_array));
 zend_persist_op_array_calc_ex(Z_PTR_P(zv));
 if (ZCG(current_persistent_script)->corrupted) {
  ADD_ARENA_SIZE(sizeof(void*));
 }
}
