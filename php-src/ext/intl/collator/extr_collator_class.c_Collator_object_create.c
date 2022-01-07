
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
typedef TYPE_2__ Collator_object ;


 int COLLATOR_ERROR_P (TYPE_2__*) ;
 int Collator_handlers ;
 int intl_error_init (int ) ;
 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *Collator_object_create(zend_class_entry *ce )
{
 Collator_object *intern = zend_object_alloc(sizeof(Collator_object), ce);
 intl_error_init(COLLATOR_ERROR_P(intern));
 zend_object_std_init(&intern->zo, ce );
 object_properties_init(&intern->zo, ce);

 intern->zo.handlers = &Collator_handlers;

 return &intern->zo;
}
