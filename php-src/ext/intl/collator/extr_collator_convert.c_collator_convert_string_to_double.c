
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_LONG ;
 int ZVAL_DOUBLE (int *,int ) ;
 int Z_LVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * collator_convert_string_to_number (int *,int *) ;

zval* collator_convert_string_to_double( zval* str, zval *rv )
{
 zval* num = collator_convert_string_to_number( str, rv );
 if( Z_TYPE_P(num) == IS_LONG )
 {
  ZVAL_DOUBLE( num, Z_LVAL_P( num ) );
 }

 return num;
}
