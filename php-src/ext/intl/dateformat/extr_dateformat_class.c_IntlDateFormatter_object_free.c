
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int datef_data; scalar_t__ requested_locale; int zo; } ;
typedef TYPE_1__ IntlDateFormatter_object ;


 int dateformat_data_free (int *) ;
 int efree (scalar_t__) ;
 TYPE_1__* php_intl_dateformatter_fetch_object (int *) ;
 int zend_object_std_dtor (int *) ;

void IntlDateFormatter_object_free( zend_object *object )
{
 IntlDateFormatter_object* dfo = php_intl_dateformatter_fetch_object(object);

 zend_object_std_dtor( &dfo->zo );

 if (dfo->requested_locale) {
  efree( dfo->requested_locale );
 }

 dateformat_data_free( &dfo->datef_data );
}
