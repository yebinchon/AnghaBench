
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
typedef TYPE_2__ Spoofchecker_object ;


 int SPOOFCHECKER_ERROR_P (TYPE_2__*) ;
 int Spoofchecker_handlers ;
 int intl_error_init (int ) ;
 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *Spoofchecker_object_create(zend_class_entry *ce)
{
 Spoofchecker_object* intern;

 intern = zend_object_alloc(sizeof(Spoofchecker_object), ce);
 intl_error_init(SPOOFCHECKER_ERROR_P(intern));
 zend_object_std_init(&intern->zo, ce);
 object_properties_init(&intern->zo, ce);

 intern->zo.handlers = &Spoofchecker_handlers;

 return &intern->zo;
}
