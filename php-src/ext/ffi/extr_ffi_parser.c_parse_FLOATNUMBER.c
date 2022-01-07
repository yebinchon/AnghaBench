
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY_FLOATNUMBER ;
 int get_sym () ;
 int yy_error_sym (char*,int) ;
 scalar_t__ yy_pos ;
 scalar_t__ yy_text ;
 int zend_ffi_val_float_number (int *,char const*,scalar_t__) ;

__attribute__((used)) static int parse_FLOATNUMBER(int sym, zend_ffi_val *val) {
 if (sym != YY_FLOATNUMBER) {
  yy_error_sym("<FLOATNUMBER> expected, got", sym);
 }
 zend_ffi_val_float_number(val, (const char*)yy_text, yy_pos - yy_text);
 sym = get_sym();
 return sym;
}
