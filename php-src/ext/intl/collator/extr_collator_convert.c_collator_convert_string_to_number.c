
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZVAL_LONG (int *,int ) ;
 int * collator_convert_string_to_number_if_possible (int *,int *) ;
 int zval_ptr_dtor (int *) ;

zval* collator_convert_string_to_number( zval* str, zval *rv )
{
 zval* num = collator_convert_string_to_number_if_possible( str, rv );
 if( num == str )
 {

  zval_ptr_dtor( num );

  num = rv;
  ZVAL_LONG( num, 0 );
 }

 return num;
}
