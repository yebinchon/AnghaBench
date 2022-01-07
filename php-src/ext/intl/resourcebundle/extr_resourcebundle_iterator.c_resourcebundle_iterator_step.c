
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {int i; } ;
typedef TYPE_1__ ResourceBundle_iterator ;


 int resourcebundle_iterator_invalidate (int *) ;

__attribute__((used)) static void resourcebundle_iterator_step( zend_object_iterator *iter )
{
 ResourceBundle_iterator *iterator = (ResourceBundle_iterator *) iter;

 iterator->i++;
 resourcebundle_iterator_invalidate( iter );
}
