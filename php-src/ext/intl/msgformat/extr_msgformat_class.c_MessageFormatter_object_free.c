
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int mf_data; int zo; } ;
typedef TYPE_1__ MessageFormatter_object ;


 int msgformat_data_free (int *) ;
 TYPE_1__* php_intl_messageformatter_fetch_object (int *) ;
 int zend_object_std_dtor (int *) ;

void MessageFormatter_object_free( zend_object *object )
{
 MessageFormatter_object* mfo = php_intl_messageformatter_fetch_object(object);

 zend_object_std_dtor( &mfo->zo );

 msgformat_data_free( &mfo->mf_data );
}
