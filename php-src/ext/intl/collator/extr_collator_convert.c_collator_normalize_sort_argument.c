
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int COLLATOR_CONVERT_RETURN_FAILED (int *) ;
 scalar_t__ IS_STRING ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * collator_convert_string_to_number_if_possible (int *,int *) ;
 int * collator_convert_zstr_utf16_to_utf8 (int *,int *) ;
 int zval_ptr_dtor (int *) ;

zval* collator_normalize_sort_argument( zval* arg, zval *rv )
{
 zval* n_arg = ((void*)0);

 if( Z_TYPE_P( arg ) != IS_STRING )
 {



  COLLATOR_CONVERT_RETURN_FAILED( arg );
 }


 n_arg = collator_convert_string_to_number_if_possible( arg, rv );

 if( n_arg == arg )
 {

  zval_ptr_dtor( n_arg );


  n_arg = collator_convert_zstr_utf16_to_utf8( arg, rv );
 }

 return n_arg;
}
