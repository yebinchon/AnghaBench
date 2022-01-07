
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int UChar ;


 int COLLATOR_CONVERT_RETURN_FAILED (int *) ;
 int IS_DOUBLE ;
 int IS_LONG ;
 scalar_t__ IS_STRING ;
 int UCHARS (int ) ;
 int ZVAL_DOUBLE (int *,double) ;
 int ZVAL_LONG (int *,int ) ;
 int Z_STRLEN_P (int *) ;
 scalar_t__ Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int collator_is_numeric (int *,int ,int *,double*,int) ;

zval* collator_convert_string_to_number_if_possible( zval* str, zval *rv )
{
 int is_numeric = 0;
 zend_long lval = 0;
 double dval = 0;

 if( Z_TYPE_P( str ) != IS_STRING )
 {
  COLLATOR_CONVERT_RETURN_FAILED( str );
 }

 if( ( is_numeric = collator_is_numeric( (UChar*) Z_STRVAL_P(str), UCHARS( Z_STRLEN_P(str) ), &lval, &dval, 1 ) ) )
 {
  if( is_numeric == IS_LONG ) {
   ZVAL_LONG(rv, lval);
  }
  if( is_numeric == IS_DOUBLE )
   ZVAL_DOUBLE(rv, dval);
 }
 else
 {
  COLLATOR_CONVERT_RETURN_FAILED( str );
 }

 return rv;
}
