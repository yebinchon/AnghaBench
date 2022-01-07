
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int current_index; } ;
typedef TYPE_1__ date_period_it ;


 int ZVAL_LONG (int *,int ) ;

__attribute__((used)) static void date_period_it_current_key(zend_object_iterator *iter, zval *key)
{
 date_period_it *iterator = (date_period_it *)iter;
 ZVAL_LONG(key, iterator->current_index);
}
