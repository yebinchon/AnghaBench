
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {scalar_t__ i; scalar_t__ length; } ;
typedef TYPE_1__ ResourceBundle_iterator ;


 int FAILURE ;
 int SUCCESS ;

__attribute__((used)) static int resourcebundle_iterator_has_more( zend_object_iterator *iter )
{
 ResourceBundle_iterator *iterator = (ResourceBundle_iterator *) iter;
 return (iterator->i < iterator->length) ? SUCCESS : FAILURE;
}
