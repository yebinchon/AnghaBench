
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY_OCTNUMBER ;
 int get_sym () ;
 int yy_error_sym (char*,int) ;
 scalar_t__ yy_pos ;
 scalar_t__ yy_text ;
 int zend_ffi_val_number (int *,int,char const*,scalar_t__) ;

__attribute__((used)) static int parse_OCTNUMBER(int sym, zend_ffi_val *val) {
 if (sym != YY_OCTNUMBER) {
  yy_error_sym("<OCTNUMBER> expected, got", sym);
 }
 zend_ffi_val_number(val, 8, (const char*)yy_text, yy_pos - yy_text);
 sym = get_sym();
 return sym;
}
