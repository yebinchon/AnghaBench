
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int parse_conditional_expression (int,int *) ;

__attribute__((used)) static int parse_constant_expression(int sym, zend_ffi_val *val) {
 sym = parse_conditional_expression(sym, val);
 return sym;
}
