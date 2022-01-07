
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ intern; } ;
typedef TYPE_2__ ResourceBundle_iterator ;


 int resourcebundle_iterator_invalidate (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void resourcebundle_iterator_dtor( zend_object_iterator *iter )
{
 ResourceBundle_iterator *iterator = (ResourceBundle_iterator *) iter;
 zval *object = &iterator->intern.data;

 resourcebundle_iterator_invalidate( iter );

 zval_ptr_dtor(object);
}
