
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {int zo; } ;
typedef TYPE_1__ Transliterator_object ;


 TYPE_1__* php_intl_transliterator_fetch_object (int *) ;
 int transliterator_object_destroy (TYPE_1__*) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void Transliterator_objects_free( zend_object *object )
{
 Transliterator_object* to = php_intl_transliterator_fetch_object(object);

 zend_object_std_dtor( &to->zo );

 transliterator_object_destroy( to );
}
