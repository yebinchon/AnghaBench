
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int kind; } ;
typedef TYPE_1__ zend_ffi_val ;
struct TYPE_13__ {int attr; } ;
typedef TYPE_2__ zend_ffi_dcl ;
typedef int uint32_t ;
typedef int HashTable ;


 int YY_CHAR ;
 int YY_CHARACTER ;
 int YY_COMPLEX ;
 int YY_CONST ;
 int YY_DECNUMBER ;
 int YY_DOUBLE ;
 int YY_ENUM ;
 int YY_FLOAT ;
 int YY_FLOATNUMBER ;
 int YY_HEXNUMBER ;
 int YY_ID ;
 int YY_INT ;
 scalar_t__ YY_IN_SET (int,int,char*) ;
 int YY_LONG ;
 int YY_OCTNUMBER ;
 int YY_RESTRICT ;
 int YY_SHORT ;
 int YY_SIGNED ;
 int YY_SIZEOF ;
 int YY_STATIC ;
 int YY_STRING ;
 int YY_STRUCT ;
 int YY_UNION ;
 int YY_UNSIGNED ;
 int YY_VOID ;
 int YY_VOLATILE ;
 int YY__ALIGNOF ;
 int YY__AND ;
 int YY__ATOMIC ;
 int YY__BANG ;
 int YY__BOOL ;
 int YY__COMMA ;
 int YY__COMPLEX ;
 int YY__LBRACK ;
 int YY__LPAREN ;
 int YY__MINUS ;
 int YY__MINUS_MINUS ;
 int YY__PLUS ;
 int YY__PLUS_PLUS ;
 int YY__POINT_POINT_POINT ;
 int YY__RBRACK ;
 int YY__RPAREN ;
 int YY__STAR ;
 int YY__TILDE ;
 int YY___ALIGNOF ;
 int YY___ALIGNOF__ ;
 int YY___ATTRIBUTE ;
 int YY___ATTRIBUTE__ ;
 int YY___CDECL ;
 int YY___COMPLEX ;
 int YY___COMPLEX__ ;
 int YY___CONST ;
 int YY___CONST__ ;
 int YY___DECLSPEC ;
 int YY___EXTENSION__ ;
 int YY___FASTCALL ;
 int YY___RESTRICT ;
 int YY___RESTRICT__ ;
 int YY___STDCALL ;
 int YY___THISCALL ;
 int YY___VECTORCALL ;
 int YY___VOLATILE ;
 int YY___VOLATILE__ ;
 int ZEND_FFI_ATTR_INCOMPLETE_ARRAY ;
 TYPE_2__ ZEND_FFI_ATTR_INIT ;
 int ZEND_FFI_ATTR_VARIADIC ;
 int ZEND_FFI_ATTR_VLA ;
 int ZEND_FFI_VAL_EMPTY ;
 int get_sym () ;
 int parse_assignment_expression (int,TYPE_1__*) ;
 int parse_parameter_declaration (int,int **) ;
 int parse_type_qualifier_list (int,TYPE_2__*) ;
 int yy_error_sym (char*,int) ;
 int yy_line ;
 unsigned char const* yy_pos ;
 unsigned char const* yy_text ;
 int zend_ffi_make_array_type (TYPE_2__*,TYPE_1__*) ;
 int zend_ffi_make_func_type (TYPE_2__*,int *,TYPE_2__*) ;

__attribute__((used)) static int parse_array_or_function_declarators(int sym, zend_ffi_dcl *dcl, zend_ffi_dcl *nested_dcl) {
 int sym2;
 const unsigned char *save_pos;
 const unsigned char *save_text;
 int save_line;
 int alt109;
 int alt105;
 int alt119;
 zend_ffi_dcl dummy = ZEND_FFI_ATTR_INIT;
 zend_ffi_val len = {.kind = ZEND_FFI_VAL_EMPTY};
 HashTable *args = ((void*)0);
 uint32_t attr = 0;
 if (sym == YY__LBRACK) {
  sym = get_sym();
  save_pos = yy_pos;
  save_text = yy_text;
  save_line = yy_line;
  alt105 = -2;
  sym2 = sym;
  if (sym2 == YY_STATIC) {
   alt105 = 106;
   goto _yy_state_105;
  } else if (YY_IN_SET(sym2, (YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\376\007\000\000\360\017\000\000\000\000\000")) {
   alt105 = 109;
   goto _yy_state_105;
  } else if (sym2 == YY__STAR) {
   sym2 = get_sym();
   goto _yy_state_105_20;
  } else if (YY_IN_SET(sym2, (YY__LPAREN,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__,YY_ID,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER), "\010\000\000\000\000\000\000\000\004\030\377\376\000")) {
   alt105 = 115;
   goto _yy_state_105;
  } else if (sym2 == YY__RBRACK) {
   alt105 = 116;
   goto _yy_state_105;
  } else {
   yy_error_sym("unexpected", sym2);
  }
_yy_state_105_20:
  if (sym2 == YY__RBRACK) {
   alt105 = 114;
   goto _yy_state_105;
  } else if (YY_IN_SET(sym2, (YY__LPAREN,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__,YY_ID,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER,YY__STAR), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
   alt105 = 115;
   goto _yy_state_105;
  } else {
   yy_error_sym("unexpected", sym2);
  }
_yy_state_105:
  yy_pos = save_pos;
  yy_text = save_text;
  yy_line = save_line;
  if (alt105 == 106) {
   sym = get_sym();
   if (YY_IN_SET(sym, (YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\000\000\376\007\000\000\360\017\000\000\000\000\000")) {
    sym = parse_type_qualifier_list(sym, &dummy);
   }
   sym = parse_assignment_expression(sym, &len);
  } else if (alt105 == 109) {
   sym = parse_type_qualifier_list(sym, &dummy);
   save_pos = yy_pos;
   save_text = yy_text;
   save_line = yy_line;
   alt109 = -2;
   sym2 = sym;
   if (sym2 == YY_STATIC) {
    alt109 = 110;
    goto _yy_state_109;
   } else if (sym2 == YY__STAR) {
    sym2 = get_sym();
    goto _yy_state_109_2;
   } else if (YY_IN_SET(sym2, (YY__LPAREN,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__,YY_ID,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER), "\010\000\000\000\000\000\000\000\004\030\377\376\000")) {
    alt109 = 113;
    goto _yy_state_109;
   } else if (sym2 == YY__RBRACK) {
    alt109 = 116;
    goto _yy_state_109;
   } else {
    yy_error_sym("unexpected", sym2);
   }
_yy_state_109_2:
   if (sym2 == YY__RBRACK) {
    alt109 = 112;
    goto _yy_state_109;
   } else if (YY_IN_SET(sym2, (YY__LPAREN,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__,YY_ID,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER,YY__STAR), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
    alt109 = 113;
    goto _yy_state_109;
   } else {
    yy_error_sym("unexpected", sym2);
   }
_yy_state_109:
   yy_pos = save_pos;
   yy_text = save_text;
   yy_line = save_line;
   if (alt109 == 110) {
    sym = get_sym();
    sym = parse_assignment_expression(sym, &len);
   } else if (alt109 == 116) {
    attr |= ZEND_FFI_ATTR_INCOMPLETE_ARRAY;
   } else if (alt109 == 112) {
    sym = get_sym();
    attr |= ZEND_FFI_ATTR_VLA;
   } else if (alt109 == 113) {
    sym = parse_assignment_expression(sym, &len);
   } else {
    yy_error_sym("unexpected", sym);
   }
  } else if (alt105 == 116 || alt105 == 114 || alt105 == 115) {
   if (alt105 == 116) {
    attr |= ZEND_FFI_ATTR_INCOMPLETE_ARRAY;
   } else if (alt105 == 114) {
    sym = get_sym();
    attr |= ZEND_FFI_ATTR_VLA;
   } else {
    sym = parse_assignment_expression(sym, &len);
   }
  } else {
   yy_error_sym("unexpected", sym);
  }
  if (sym != YY__RBRACK) {
   yy_error_sym("']' expected, got", sym);
  }
  sym = get_sym();
  if (sym == YY__LBRACK || sym == YY__LPAREN) {
   sym = parse_array_or_function_declarators(sym, dcl, nested_dcl);
  }
  dcl->attr |= attr;
  zend_ffi_make_array_type(dcl, &len);
 } else if (sym == YY__LPAREN) {
  sym = get_sym();
  if (YY_IN_SET(sym, (YY___EXTENSION__,YY_VOID,YY_CHAR,YY_SHORT,YY_INT,YY_LONG,YY_FLOAT,YY_DOUBLE,YY_SIGNED,YY_UNSIGNED,YY__BOOL,YY__COMPLEX,YY_COMPLEX,YY___COMPLEX,YY___COMPLEX__,YY_STRUCT,YY_UNION,YY_ENUM,YY_ID,YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL,YY__POINT_POINT_POINT), "\002\000\376\377\377\107\370\017\000\000\000\002\000")) {
   if (YY_IN_SET(sym, (YY___EXTENSION__,YY_VOID,YY_CHAR,YY_SHORT,YY_INT,YY_LONG,YY_FLOAT,YY_DOUBLE,YY_SIGNED,YY_UNSIGNED,YY__BOOL,YY__COMPLEX,YY_COMPLEX,YY___COMPLEX,YY___COMPLEX__,YY_STRUCT,YY_UNION,YY_ENUM,YY_ID,YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\002\000\376\377\377\107\360\017\000\000\000\002\000")) {
    sym = parse_parameter_declaration(sym, &args);
    while (1) {
     save_pos = yy_pos;
     save_text = yy_text;
     save_line = yy_line;
     alt119 = -2;
     sym2 = sym;
     if (sym2 == YY__COMMA) {
      sym2 = get_sym();
      goto _yy_state_119_1;
     } else if (sym2 == YY__RPAREN) {
      alt119 = 125;
      goto _yy_state_119;
     } else {
      yy_error_sym("unexpected", sym2);
     }
_yy_state_119_1:
     if (YY_IN_SET(sym2, (YY___EXTENSION__,YY_VOID,YY_CHAR,YY_SHORT,YY_INT,YY_LONG,YY_FLOAT,YY_DOUBLE,YY_SIGNED,YY_UNSIGNED,YY__BOOL,YY__COMPLEX,YY_COMPLEX,YY___COMPLEX,YY___COMPLEX__,YY_STRUCT,YY_UNION,YY_ENUM,YY_ID,YY_CONST,YY___CONST,YY___CONST__,YY_RESTRICT,YY___RESTRICT,YY___RESTRICT__,YY_VOLATILE,YY___VOLATILE,YY___VOLATILE__,YY__ATOMIC,YY___ATTRIBUTE,YY___ATTRIBUTE__,YY___DECLSPEC,YY___CDECL,YY___STDCALL,YY___FASTCALL,YY___THISCALL,YY___VECTORCALL), "\002\000\376\377\377\107\360\017\000\000\000\002\000")) {
      alt119 = 120;
      goto _yy_state_119;
     } else if (sym2 == YY__POINT_POINT_POINT) {
      alt119 = 122;
      goto _yy_state_119;
     } else {
      yy_error_sym("unexpected", sym2);
     }
_yy_state_119:
     yy_pos = save_pos;
     yy_text = save_text;
     yy_line = save_line;
     if (alt119 != 120) {
      break;
     }
     sym = get_sym();
     sym = parse_parameter_declaration(sym, &args);
    }
    if (alt119 == 122) {
     sym = get_sym();
     if (sym != YY__POINT_POINT_POINT) {
      yy_error_sym("'...' expected, got", sym);
     }
     sym = get_sym();
     attr |= ZEND_FFI_ATTR_VARIADIC;
    }
   } else {
    sym = get_sym();
    attr |= ZEND_FFI_ATTR_VARIADIC;
   }
  }
  if (sym != YY__RPAREN) {
   yy_error_sym("')' expected, got", sym);
  }
  sym = get_sym();
  if (sym == YY__LBRACK || sym == YY__LPAREN) {
   sym = parse_array_or_function_declarators(sym, dcl, nested_dcl);
  }
  dcl->attr |= attr;
  zend_ffi_make_func_type(dcl, args, nested_dcl);
 } else {
  yy_error_sym("unexpected", sym);
 }
 return sym;
}
