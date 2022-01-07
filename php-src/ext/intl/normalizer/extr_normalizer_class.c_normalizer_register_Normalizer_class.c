
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * create_object; } ;
typedef TYPE_1__ zend_class_entry ;


 int E_ERROR ;
 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int Normalizer_ce_ptr ;
 int Normalizer_class_functions ;
 int zend_error (int ,char*) ;
 int zend_register_internal_class (TYPE_1__*) ;

void normalizer_register_Normalizer_class( void )
{
 zend_class_entry ce;


 INIT_CLASS_ENTRY( ce, "Normalizer", Normalizer_class_functions );
 ce.create_object = ((void*)0);
 Normalizer_ce_ptr = zend_register_internal_class( &ce );


 if( !Normalizer_ce_ptr )
 {
  zend_error( E_ERROR,
   "Normalizer: attempt to create properties "
   "on a non-registered class." );
  return;
 }
}
