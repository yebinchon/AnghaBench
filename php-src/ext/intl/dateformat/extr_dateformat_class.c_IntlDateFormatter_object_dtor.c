
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;


 int zend_objects_destroy_object (int *) ;

__attribute__((used)) static void IntlDateFormatter_object_dtor(zend_object *object )
{
 zend_objects_destroy_object( object );
}
