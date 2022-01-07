
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_val ;


 int YY_CHARACTER ;
 int get_sym () ;
 int yy_error_sym (char*,int) ;
 scalar_t__ yy_pos ;
 scalar_t__ yy_text ;
 int zend_ffi_val_character (int *,char const*,scalar_t__) ;

__attribute__((used)) static int parse_CHARACTER(int sym, zend_ffi_val *val) {
 if (sym != YY_CHARACTER) {
  yy_error_sym("<CHARACTER> expected, got", sym);
 }
 zend_ffi_val_character(val, (const char*)yy_text, yy_pos - yy_text);
 sym = get_sym();
 return sym;
}
