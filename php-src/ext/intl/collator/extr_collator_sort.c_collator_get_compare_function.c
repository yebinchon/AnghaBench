
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int collator_compare_func_t ;





 int collator_icu_compare_function ;
 int collator_numeric_compare_function ;
 int collator_regular_compare_function ;

__attribute__((used)) static collator_compare_func_t collator_get_compare_function( const zend_long sort_flags )
{
 collator_compare_func_t func;

 switch( sort_flags )
 {
  case 130:
   func = collator_numeric_compare_function;
   break;

  case 128:
   func = collator_icu_compare_function;
   break;

  case 129:
  default:
   func = collator_regular_compare_function;
   break;
 }

 return func;
}
