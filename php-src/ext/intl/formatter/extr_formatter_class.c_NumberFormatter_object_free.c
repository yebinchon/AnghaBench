
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int nf_data; int zo; } ;
typedef TYPE_1__ NumberFormatter_object ;


 int formatter_data_free (int *) ;
 TYPE_1__* php_intl_number_format_fetch_object (int *) ;
 int zend_object_std_dtor (int *) ;

void NumberFormatter_object_free( zend_object *object )
{
 NumberFormatter_object* nfo = php_intl_number_format_fetch_object(object);

 zend_object_std_dtor( &nfo->zo );

 formatter_data_free( &nfo->nf_data );
}
