
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ zend_function ;


 int ZEND_HASH_APPLY_KEEP ;
 int ZEND_HASH_APPLY_REMOVE ;
 scalar_t__ ZEND_INTERNAL_FUNCTION ;
 TYPE_1__* Z_PTR_P (int *) ;

__attribute__((used)) static int clean_non_persistent_function_full(zval *zv)
{
 zend_function *function = Z_PTR_P(zv);
 return (function->type == ZEND_INTERNAL_FUNCTION) ? ZEND_HASH_APPLY_KEEP : ZEND_HASH_APPLY_REMOVE;
}
