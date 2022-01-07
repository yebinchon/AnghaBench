
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {int calendar; TYPE_1__ zo; int * requested_locale; scalar_t__ time_type; scalar_t__ date_type; int datef_data; } ;
typedef TYPE_2__ IntlDateFormatter_object ;


 int IntlDateFormatter_handlers ;
 int dateformat_data_init (int *) ;
 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *IntlDateFormatter_object_create(zend_class_entry *ce)
{
 IntlDateFormatter_object* intern;

 intern = zend_object_alloc(sizeof(IntlDateFormatter_object), ce);
 dateformat_data_init( &intern->datef_data );
 zend_object_std_init( &intern->zo, ce );
 object_properties_init(&intern->zo, ce);
 intern->date_type = 0;
 intern->time_type = 0;
 intern->calendar = -1;
 intern->requested_locale = ((void*)0);

 intern->zo.handlers = &IntlDateFormatter_handlers;

 return &intern->zo;
}
