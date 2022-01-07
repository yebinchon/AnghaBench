
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_class_entry ;
struct TYPE_6__ {int create_object; } ;
struct TYPE_5__ {int create_object; } ;


 int INIT_CLASS_ENTRY_EX (int ,char*,int,int *) ;
 TYPE_1__* IntlException_ce_ptr ;
 TYPE_2__* zend_ce_exception ;
 TYPE_1__* zend_register_internal_class_ex (int *,TYPE_2__*) ;

void intl_register_IntlException_class( void )
{
 zend_class_entry ce;


 INIT_CLASS_ENTRY_EX( ce, "IntlException", sizeof( "IntlException" ) - 1, ((void*)0) );
 IntlException_ce_ptr = zend_register_internal_class_ex( &ce,
  zend_ce_exception );
 IntlException_ce_ptr->create_object = zend_ce_exception->create_object;
}
