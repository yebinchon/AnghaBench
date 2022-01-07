
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_STRING ;
 int SUCCESS ;
 int ZVAL_LONG (int *,int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * collator_convert_string_to_double (int *,int *) ;
 int numeric_compare_function (int *,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int collator_numeric_compare_function(zval *result, zval *op1, zval *op2)
{
 zval num1, num2;
 zval *num1_p = ((void*)0);
 zval *num2_p = ((void*)0);

 if( Z_TYPE_P(op1) == IS_STRING )
 {
  num1_p = collator_convert_string_to_double( op1, &num1 );
  op1 = num1_p;
 }

 if( Z_TYPE_P(op2) == IS_STRING )
 {
  num2_p = collator_convert_string_to_double( op2, &num2 );
  op2 = num2_p;
 }

 ZVAL_LONG(result, numeric_compare_function(op1, op2));

 if( num1_p )
  zval_ptr_dtor( num1_p );
 if( num2_p )
  zval_ptr_dtor( num2_p );

 return SUCCESS;
}
