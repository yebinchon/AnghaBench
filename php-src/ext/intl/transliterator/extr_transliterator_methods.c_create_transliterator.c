
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
typedef int int32_t ;
typedef int UTransliterator ;
typedef int UTransDirection ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ UParseError ;
typedef char UChar ;
typedef int Transliterator_object ;


 int FAILURE ;
 int SUCCESS ;
 int TRANSLITERATOR_ERROR_CODE (int *) ;
 int TRANSLITERATOR_ERROR_CODE_P (int *) ;
 scalar_t__ TRANSLITERATOR_FORWARD ;
 int TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK ;
 scalar_t__ TRANSLITERATOR_REVERSE ;
 int Transliterator_ce_ptr ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ILLEGAL_ARGUMENT_ERROR ;
 int efree (char*) ;
 int intl_convert_utf8_to_utf16 (char**,int *,char*,size_t,int ) ;
 int intl_error_reset (int *) ;
 int intl_error_set (int *,int ,char*,int ) ;
 int intl_error_set_code (int *,int ) ;
 int intl_error_set_custom_msg (int *,char*,int) ;
 int object_init_ex (int *,int ) ;
 int spprintf (char**,int ,char*,char*) ;
 int transliterator_object_construct (int *,int *,int ) ;
 int * utrans_openU (char*,int ,int ,int *,int,TYPE_1__*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int create_transliterator( char *str_id, size_t str_id_len, zend_long direction, zval *object )
{
 Transliterator_object *to;
 UChar *ustr_id = ((void*)0);
 int32_t ustr_id_len = 0;
 UTransliterator *utrans;
 UParseError parse_error = {0, -1};

 intl_error_reset( ((void*)0) );

 if( ( direction != TRANSLITERATOR_FORWARD ) && (direction != TRANSLITERATOR_REVERSE ) )
 {
  intl_error_set( ((void*)0), U_ILLEGAL_ARGUMENT_ERROR,
   "transliterator_create: invalid direction", 0 );
  return FAILURE;
 }

 object_init_ex( object, Transliterator_ce_ptr );
 TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK;


 intl_convert_utf8_to_utf16( &ustr_id, &ustr_id_len, str_id, str_id_len, TRANSLITERATOR_ERROR_CODE_P( to ) );
 if( U_FAILURE( TRANSLITERATOR_ERROR_CODE( to ) ) )
 {
  intl_error_set_code( ((void*)0), TRANSLITERATOR_ERROR_CODE( to ) );
  intl_error_set_custom_msg( ((void*)0), "String conversion of id to UTF-16 failed", 0 );
  zval_ptr_dtor( object );
  return FAILURE;
 }


 utrans = utrans_openU( ustr_id, ustr_id_len, (UTransDirection ) direction,
  ((void*)0), -1, &parse_error, TRANSLITERATOR_ERROR_CODE_P( to ) );
 if (ustr_id) {
  efree( ustr_id );
 }

 if( U_FAILURE( TRANSLITERATOR_ERROR_CODE( to ) ) )
 {
  char *buf = ((void*)0);
  intl_error_set_code( ((void*)0), TRANSLITERATOR_ERROR_CODE( to ) );
  spprintf( &buf, 0, "transliterator_create: unable to open ICU transliterator"
   " with id \"%s\"", str_id );
  if( buf == ((void*)0) ) {
   intl_error_set_custom_msg( ((void*)0),
    "transliterator_create: unable to open ICU transliterator", 0 );
  }
  else
  {
   intl_error_set_custom_msg( ((void*)0), buf, 1 );
   efree( buf );
  }
  zval_ptr_dtor( object );
  return FAILURE;
 }

 transliterator_object_construct( object, utrans, TRANSLITERATOR_ERROR_CODE_P( to ) );

 if( U_FAILURE( TRANSLITERATOR_ERROR_CODE( to ) ) )
 {
  intl_error_set_code( ((void*)0), TRANSLITERATOR_ERROR_CODE( to ) );
  intl_error_set_custom_msg( ((void*)0),
   "transliterator_create: internal constructor call failed", 0 );
  zval_ptr_dtor( object );
  return FAILURE;
 }

 return SUCCESS;
}
