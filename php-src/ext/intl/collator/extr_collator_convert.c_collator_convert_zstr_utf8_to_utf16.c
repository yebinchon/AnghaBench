
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int int32_t ;
typedef int UErrorCode ;
typedef int UChar ;


 int E_WARNING ;
 int UBYTES (int ) ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ZERO_ERROR ;
 int ZVAL_STRINGL (int *,char*,int ) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 int efree (char*) ;
 int intl_convert_utf8_to_utf16 (int **,int *,int ,int ,int *) ;
 int php_error (int ,char*) ;

zval* collator_convert_zstr_utf8_to_utf16( zval* utf8_zval, zval *rv )
{
 zval* zstr = ((void*)0);
 UChar* ustr = ((void*)0);
 int32_t ustr_len = 0;
 UErrorCode status = U_ZERO_ERROR;


 intl_convert_utf8_to_utf16(
   &ustr, &ustr_len,
   Z_STRVAL_P( utf8_zval ), Z_STRLEN_P( utf8_zval ),
   &status );
 if( U_FAILURE( status ) )
  php_error( E_WARNING, "Error casting object to string in collator_convert_zstr_utf8_to_utf16()" );


 zstr = rv;
 ZVAL_STRINGL( zstr, (char*)ustr, UBYTES(ustr_len));

 efree((char *)ustr);

 return zstr;
}
