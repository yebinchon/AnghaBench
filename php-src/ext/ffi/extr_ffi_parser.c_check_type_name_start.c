
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YY_ID ;
 int check_ID (int) ;
 int get_sym () ;
 scalar_t__ yy_pos ;
 scalar_t__ yy_text ;
 scalar_t__ zend_ffi_is_typedef_name (char const*,scalar_t__) ;

__attribute__((used)) static int check_type_name_start(int sym) {
 if ((sym == YY_ID) && (zend_ffi_is_typedef_name((const char*)yy_text, yy_pos - yy_text))) {
  sym = check_ID(sym);
  if (sym == -1) {
   return -1;
  }
 } else {
  switch (sym) {
   case 143:
    sym = get_sym();
    break;
   case 157:
    sym = get_sym();
    break;
   case 148:
    sym = get_sym();
    break;
   case 151:
    sym = get_sym();
    break;
   case 150:
    sym = get_sym();
    break;
   case 152:
    sym = get_sym();
    break;
   case 154:
    sym = get_sym();
    break;
   case 147:
    sym = get_sym();
    break;
   case 144:
    sym = get_sym();
    break;
   case 140:
    sym = get_sym();
    break;
   case 139:
    sym = get_sym();
    break;
   case 156:
    sym = get_sym();
    break;
   case 136:
    sym = get_sym();
    break;
   case 135:
    sym = get_sym();
    break;
   case 146:
    sym = get_sym();
    break;
   case 145:
    sym = get_sym();
    break;
   case 153:
    sym = get_sym();
    break;
   case 155:
    sym = get_sym();
    break;
   case 134:
    sym = get_sym();
    break;
   case 133:
    sym = get_sym();
    break;
   case 149:
    sym = get_sym();
    break;
   case 131:
    sym = get_sym();
    break;
   case 130:
    sym = get_sym();
    break;
   case 142:
    sym = get_sym();
    break;
   case 129:
    sym = get_sym();
    break;
   case 128:
    sym = get_sym();
    break;
   case 141:
    sym = get_sym();
    break;
   case 138:
    sym = get_sym();
    break;
   case 137:
    sym = get_sym();
    break;
   case 132:
    sym = get_sym();
    break;
   default:
    return -1;
  }
 }
 return sym;
}
