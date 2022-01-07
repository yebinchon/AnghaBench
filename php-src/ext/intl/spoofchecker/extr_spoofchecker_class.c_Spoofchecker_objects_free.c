
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {int zo; } ;
typedef TYPE_1__ Spoofchecker_object ;


 TYPE_1__* php_intl_spoofchecker_fetch_object (int *) ;
 int spoofchecker_object_destroy (TYPE_1__*) ;
 int zend_object_std_dtor (int *) ;

void Spoofchecker_objects_free(zend_object *object)
{
 Spoofchecker_object* co = php_intl_spoofchecker_fetch_object(object);

 zend_object_std_dtor(&co->zo);

 spoofchecker_object_destroy(co);
}
