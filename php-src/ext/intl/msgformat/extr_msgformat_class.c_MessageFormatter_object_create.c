
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ zo; int mf_data; } ;
typedef TYPE_2__ MessageFormatter_object ;


 int MessageFormatter_handlers ;
 int msgformat_data_init (int *) ;
 int object_properties_init (TYPE_1__*,int *) ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *MessageFormatter_object_create(zend_class_entry *ce)
{
 MessageFormatter_object* intern;

 intern = zend_object_alloc(sizeof(MessageFormatter_object), ce);
 msgformat_data_init( &intern->mf_data );
 zend_object_std_init( &intern->zo, ce );
 object_properties_init(&intern->zo, ce);

 intern->zo.handlers = &MessageFormatter_handlers;

 return &intern->zo;
}
