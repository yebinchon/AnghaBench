
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int * compare_func_t ;


 int PHP_SORT_FLAG_CASE ;





 int * php_array_data_compare ;
 int * php_array_data_compare_numeric ;
 int * php_array_data_compare_string ;
 int * php_array_data_compare_string_case ;
 int * php_array_data_compare_string_locale ;
 int * php_array_natural_case_compare ;
 int * php_array_natural_compare ;
 int * php_array_reverse_data_compare ;
 int * php_array_reverse_data_compare_numeric ;
 int * php_array_reverse_data_compare_string ;
 int * php_array_reverse_data_compare_string_case ;
 int * php_array_reverse_data_compare_string_locale ;
 int * php_array_reverse_natural_case_compare ;
 int * php_array_reverse_natural_compare ;

__attribute__((used)) static compare_func_t php_get_data_compare_func(zend_long sort_type, int reverse)
{
 switch (sort_type & ~PHP_SORT_FLAG_CASE) {
  case 130:
   if (reverse) {
    return php_array_reverse_data_compare_numeric;
   } else {
    return php_array_data_compare_numeric;
   }
   break;

  case 128:
   if (sort_type & PHP_SORT_FLAG_CASE) {
    if (reverse) {
     return php_array_reverse_data_compare_string_case;
    } else {
     return php_array_data_compare_string_case;
    }
   } else {
    if (reverse) {
     return php_array_reverse_data_compare_string;
    } else {
     return php_array_data_compare_string;
    }
   }
   break;

  case 131:
   if (sort_type & PHP_SORT_FLAG_CASE) {
    if (reverse) {
     return php_array_reverse_natural_case_compare;
    } else {
     return php_array_natural_case_compare;
    }
   } else {
    if (reverse) {
     return php_array_reverse_natural_compare;
    } else {
     return php_array_natural_compare;
    }
   }
   break;

  case 132:
   if (reverse) {
    return php_array_reverse_data_compare_string_locale;
   } else {
    return php_array_data_compare_string_locale;
   }
   break;

  case 129:
  default:
   if (reverse) {
    return php_array_reverse_data_compare;
   } else {
    return php_array_data_compare;
   }
   break;
 }
 return ((void*)0);
}
