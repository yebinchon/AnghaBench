
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_3__ {int i; int currentkey; scalar_t__ is_table; int current; } ;
typedef TYPE_1__ ResourceBundle_iterator ;


 int ZVAL_LONG (int *,int ) ;
 int ZVAL_STRING (int *,int ) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 int resourcebundle_iterator_read (TYPE_1__*) ;

__attribute__((used)) static void resourcebundle_iterator_key( zend_object_iterator *iter, zval *key )
{
 ResourceBundle_iterator *iterator = (ResourceBundle_iterator *) iter;

 if (Z_ISUNDEF(iterator->current)) {
  resourcebundle_iterator_read( iterator);
 }

 if (iterator->is_table) {
  ZVAL_STRING(key, iterator->currentkey);
 } else {
  ZVAL_LONG(key, iterator->i);
 }
}
