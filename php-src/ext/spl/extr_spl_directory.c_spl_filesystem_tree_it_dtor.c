
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {int current; TYPE_1__ intern; } ;
typedef TYPE_2__ spl_filesystem_iterator ;


 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_filesystem_tree_it_dtor(zend_object_iterator *iter)
{
 spl_filesystem_iterator *iterator = (spl_filesystem_iterator *)iter;

 if (!Z_ISUNDEF(iterator->intern.data)) {
  zval *object = &iterator->intern.data;
  zval_ptr_dtor(object);
 } else {
  if (!Z_ISUNDEF(iterator->current)) {
   zval_ptr_dtor(&iterator->current);
   ZVAL_UNDEF(&iterator->current);
  }
 }
}
