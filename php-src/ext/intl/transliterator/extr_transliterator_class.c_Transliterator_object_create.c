
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_9__ {TYPE_1__ zo; } ;
typedef TYPE_2__ Transliterator_object ;


 int Transliterator_handlers ;
 int object_properties_init (TYPE_1__*,int *) ;
 int transliterator_object_init (TYPE_2__*) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *Transliterator_object_create( zend_class_entry *ce )
{
 Transliterator_object* intern;

 intern = zend_object_alloc(sizeof(Transliterator_object), ce);

 zend_object_std_init( &intern->zo, ce );
    object_properties_init( &intern->zo, ce );
 transliterator_object_init( intern );

 intern->zo.handlers = &Transliterator_handlers;

 return &intern->zo;
}
