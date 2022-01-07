
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ffi_dcl ;
typedef int int64_t ;


 int YY_ID ;
 int YY__COMMA ;
 int YY__RBRACE ;
 int get_sym () ;
 int parse_enumerator (int,int *,int*,int*,int*) ;
 int yy_error_sym (char*,int) ;
 int yy_line ;
 unsigned char const* yy_pos ;
 unsigned char const* yy_text ;

__attribute__((used)) static int parse_enumerator_list(int sym, zend_ffi_dcl *enum_dcl) {
 int sym2;
 const unsigned char *save_pos;
 const unsigned char *save_text;
 int save_line;
 int alt250;
 int64_t min = 0, max = 0, last = -1;
 sym = parse_enumerator(sym, enum_dcl, &min, &max, &last);
 while (1) {
  save_pos = yy_pos;
  save_text = yy_text;
  save_line = yy_line;
  alt250 = -2;
  sym2 = sym;
  if (sym2 == YY__COMMA) {
   sym2 = get_sym();
   goto _yy_state_250_1;
  } else if (sym2 == YY__RBRACE) {
   alt250 = -1;
   goto _yy_state_250;
  } else {
   yy_error_sym("unexpected", sym2);
  }
_yy_state_250_1:
  if (sym2 == YY_ID) {
   alt250 = 251;
   goto _yy_state_250;
  } else if (sym2 == YY__RBRACE) {
   alt250 = 253;
   goto _yy_state_250;
  } else {
   yy_error_sym("unexpected", sym2);
  }
_yy_state_250:
  yy_pos = save_pos;
  yy_text = save_text;
  yy_line = save_line;
  if (alt250 != 251) {
   break;
  }
  sym = get_sym();
  sym = parse_enumerator(sym, enum_dcl, &min, &max, &last);
 }
 if (alt250 == 253) {
  sym = get_sym();
 }
 return sym;
}
