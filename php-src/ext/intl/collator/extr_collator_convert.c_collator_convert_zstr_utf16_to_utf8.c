
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int UErrorCode ;
typedef int UChar ;


 int E_WARNING ;
 int UCHARS (int ) ;
 int U_ZERO_ERROR ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_NEW_STR (int *,int *) ;
 int Z_STRLEN_P (int *) ;
 scalar_t__ Z_STRVAL_P (int *) ;
 int * intl_convert_utf16_to_utf8 (int *,int ,int *) ;
 int php_error (int ,char*) ;

zval* collator_convert_zstr_utf16_to_utf8( zval* utf16_zval, zval *rv )
{
 zend_string* u8str;
 UErrorCode status = U_ZERO_ERROR;


 u8str = intl_convert_utf16_to_utf8(
  (UChar*) Z_STRVAL_P(utf16_zval), UCHARS( Z_STRLEN_P(utf16_zval) ), &status );
 if( !u8str ) {
  php_error( E_WARNING, "Error converting utf16 to utf8 in collator_convert_zval_utf16_to_utf8()" );
  ZVAL_EMPTY_STRING( rv );
 } else {
  ZVAL_NEW_STR( rv, u8str );
 }
 return rv;
}
