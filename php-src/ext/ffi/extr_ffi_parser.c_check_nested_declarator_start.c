
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YY_ID ;






 int check_ID (int) ;
 int get_sym () ;
 scalar_t__ yy_pos ;
 scalar_t__ yy_text ;
 int zend_ffi_is_typedef_name (char const*,scalar_t__) ;

__attribute__((used)) static int check_nested_declarator_start(int sym) {
 if (sym != 132) {
  return -1;
 }
 sym = get_sym();
 if ((sym == YY_ID) && (!zend_ffi_is_typedef_name((const char*)yy_text, yy_pos - yy_text))) {
  sym = check_ID(sym);
  if (sym == -1) {
   return -1;
  }
 } else {
  switch (sym) {
   case 130:
    sym = get_sym();
    break;
   case 129:
    sym = get_sym();
    break;
   case 128:
    sym = get_sym();
    break;
   case 131:
    sym = get_sym();
    break;
   case 132:
    sym = get_sym();
    break;
   case 133:
    sym = get_sym();
    break;
   default:
    return -1;
  }
 }
 return sym;
}
