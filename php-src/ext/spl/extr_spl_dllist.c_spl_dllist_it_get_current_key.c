
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_2__ {int traverse_position; } ;
typedef TYPE_1__ spl_dllist_it ;


 int ZVAL_LONG (int *,int ) ;

__attribute__((used)) static void spl_dllist_it_get_current_key(zend_object_iterator *iter, zval *key)
{
 spl_dllist_it *iterator = (spl_dllist_it *)iter;

 ZVAL_LONG(key, iterator->traverse_position);
}
