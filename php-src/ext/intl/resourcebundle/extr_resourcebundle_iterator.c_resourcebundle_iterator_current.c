
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
struct TYPE_3__ {int current; } ;
typedef TYPE_1__ ResourceBundle_iterator ;


 scalar_t__ Z_ISUNDEF (int ) ;
 int resourcebundle_iterator_read (TYPE_1__*) ;

__attribute__((used)) static zval *resourcebundle_iterator_current( zend_object_iterator *iter )
{
 ResourceBundle_iterator *iterator = (ResourceBundle_iterator *) iter;
 if (Z_ISUNDEF(iterator->current)) {
  resourcebundle_iterator_read( iterator);
 }
 return &iterator->current;
}
