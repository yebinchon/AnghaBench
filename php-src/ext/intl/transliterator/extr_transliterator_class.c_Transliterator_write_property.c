
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int zend_class_entry ;


 int * EG (int ) ;
 int E_WARNING ;
 int * Transliterator_ce_ptr ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int fake_scope ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ zend_binary_strcmp (char*,int,int ,int ) ;
 int * zend_get_executed_scope () ;
 int * zend_std_write_property (int *,int *,int *,void**) ;

__attribute__((used)) static zval *Transliterator_write_property( zend_object *object, zend_string *name, zval *value,
 void **cache_slot )
{
 zend_class_entry *scope;

 if (EG(fake_scope)) {
  scope = EG(fake_scope);
 } else {
  scope = zend_get_executed_scope();
 }
 if( ( scope != Transliterator_ce_ptr ) &&
  ( zend_binary_strcmp( "id", sizeof( "id" ) - 1,
  ZSTR_VAL( name ), ZSTR_LEN( name ) ) == 0 ) )
 {
  php_error_docref(((void*)0), E_WARNING, "The property \"id\" is read-only" );
 }
 else
 {
  value = zend_std_write_property( object, name, value, cache_slot );
 }

 return value;
}
