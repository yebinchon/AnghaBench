
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int COLLATOR_CONVERT_RETURN_FAILED (int *) ;
 scalar_t__ IS_STRING ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * collator_convert_zstr_utf8_to_utf16 (int *,int *) ;
 int zend_make_printable_zval (int *,int *) ;
 int zval_ptr_dtor_str (int *) ;

zval* collator_make_printable_zval( zval* arg, zval *rv)
{
 zval arg_copy;
 zval* str = ((void*)0);

 if( Z_TYPE_P(arg) != IS_STRING )
 {

  int use_copy = zend_make_printable_zval(arg, &arg_copy);

  if( use_copy )
  {
   str = collator_convert_zstr_utf8_to_utf16( &arg_copy, rv );
   zval_ptr_dtor_str( &arg_copy );
  }
  else
  {
   str = collator_convert_zstr_utf8_to_utf16( arg, rv );
  }
 }
 else
 {
  COLLATOR_CONVERT_RETURN_FAILED( arg );
 }

 return str;
}
