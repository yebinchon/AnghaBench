
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_9__ {TYPE_1__ zend; int * child; int * me; } ;
typedef TYPE_2__ ResourceBundle_object ;


 int INTL_DATA_ERROR_P (TYPE_2__*) ;
 int ResourceBundle_object_handlers ;
 int intl_error_init (int ) ;
 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

__attribute__((used)) static zend_object *ResourceBundle_object_create( zend_class_entry *ce )
{
 ResourceBundle_object *rb;

 rb = zend_object_alloc(sizeof(ResourceBundle_object), ce);

 zend_object_std_init( &rb->zend, ce );
 object_properties_init( &rb->zend, ce);

 intl_error_init( INTL_DATA_ERROR_P(rb) );
 rb->me = ((void*)0);
 rb->child = ((void*)0);

 rb->zend.handlers = &ResourceBundle_object_handlers;

 return &rb->zend;
}
