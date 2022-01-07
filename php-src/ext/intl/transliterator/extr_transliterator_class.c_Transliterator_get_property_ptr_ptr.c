
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 scalar_t__ zend_binary_strcmp (char*,int,int ,int ) ;
 int * zend_std_get_property_ptr_ptr (int *,int *,int,void**) ;

__attribute__((used)) static zval *Transliterator_get_property_ptr_ptr( zend_object *object, zend_string *name, int type, void **cache_slot )
{
 zval *retval;

 if(zend_binary_strcmp( "id", sizeof( "id" ) - 1,
  ZSTR_VAL( name ), ZSTR_LEN( name ) ) == 0 )
 {
  retval = ((void*)0);
 }
 else
 {
  retval = zend_std_get_property_ptr_ptr( object, name, type, cache_slot );
 }

 return retval;
}
