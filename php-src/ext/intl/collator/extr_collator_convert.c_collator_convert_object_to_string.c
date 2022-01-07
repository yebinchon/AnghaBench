
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int int32_t ;
typedef int UErrorCode ;
typedef int UChar ;
struct TYPE_2__ {scalar_t__ (* cast_object ) (int ,int *,int ) ;} ;


 int COLLATOR_CONVERT_RETURN_FAILED (int *) ;
 int E_WARNING ;
 scalar_t__ FAILURE ;
 scalar_t__ IS_OBJECT ;
 int IS_STRING ;
 int UBYTES (int ) ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ZERO_ERROR ;
 int ZVAL_STRINGL (int *,char*,int ) ;
 TYPE_1__* Z_OBJ_HT_P (int *) ;
 int Z_OBJ_P (int *) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int efree (char*) ;
 int intl_convert_utf8_to_utf16 (int **,int *,int ,int ,int *) ;
 int php_error (int ,char*) ;
 scalar_t__ stub1 (int ,int *,int ) ;
 int zval_ptr_dtor (int *) ;
 int zval_ptr_dtor_str (int *) ;

zval* collator_convert_object_to_string( zval* obj, zval *rv )
{
 zval* zstr = ((void*)0);
 UErrorCode status = U_ZERO_ERROR;
 UChar* ustr = ((void*)0);
 int32_t ustr_len = 0;


 if( Z_TYPE_P( obj ) != IS_OBJECT )
 {
  COLLATOR_CONVERT_RETURN_FAILED( obj );
 }


 if( Z_OBJ_HT_P(obj)->cast_object )
 {
  zstr = rv;

  if( Z_OBJ_HT_P(obj)->cast_object( Z_OBJ_P(obj), zstr, IS_STRING ) == FAILURE )
  {

   zval_ptr_dtor( zstr );
   COLLATOR_CONVERT_RETURN_FAILED( obj );
  }
 }


 if( zstr == ((void*)0) )
 {
  COLLATOR_CONVERT_RETURN_FAILED( obj );
 }


 intl_convert_utf8_to_utf16(
   &ustr, &ustr_len,
   Z_STRVAL_P( zstr ), Z_STRLEN_P( zstr ),
   &status );
 if( U_FAILURE( status ) )
  php_error( E_WARNING, "Error casting object to string in collator_convert_object_to_string()" );


 zval_ptr_dtor_str( zstr );


 ZVAL_STRINGL( zstr, (char*)ustr, UBYTES(ustr_len));

 efree((char *)ustr);





 return zstr;
}
