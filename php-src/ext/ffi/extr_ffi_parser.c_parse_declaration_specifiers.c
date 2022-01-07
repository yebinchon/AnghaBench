
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int zend_ffi_val ;
struct TYPE_11__ {int flags; } ;
typedef TYPE_1__ zend_ffi_dcl ;




 int YY_CHARACTER ;


 int YY_DECNUMBER ;




 int YY_FLOATNUMBER ;
 int YY_HEXNUMBER ;



 scalar_t__ YY_IN_SET (int,int,char*) ;

 int YY_OCTNUMBER ;




 int YY_SIZEOF ;

 int YY_STRING ;







 int YY__ALIGNOF ;
 int YY__AND ;

 int YY__BANG ;


 int YY__LPAREN ;
 int YY__MINUS ;
 int YY__MINUS_MINUS ;

 int YY__PLUS ;
 int YY__PLUS_PLUS ;
 int YY__RPAREN ;
 int YY__STAR ;
 int YY__TILDE ;
 int YY___ALIGNOF ;
 int YY___ALIGNOF__ ;
 int YY___EXTENSION__ ;
 TYPE_1__ ZEND_FFI_ATTR_INIT ;
 int ZEND_FFI_DCL_AUTO ;
 int ZEND_FFI_DCL_EXTERN ;
 int ZEND_FFI_DCL_INLINE ;
 int ZEND_FFI_DCL_NO_RETURN ;
 int ZEND_FFI_DCL_REGISTER ;
 int ZEND_FFI_DCL_STATIC ;
 int ZEND_FFI_DCL_STORAGE_CLASS ;
 int ZEND_FFI_DCL_TYPEDEF ;
 int ZEND_FFI_DCL_TYPE_SPECIFIERS ;
 int get_sym () ;
 int parse_attributes (int,TYPE_1__*) ;
 int parse_constant_expression (int,int *) ;
 int parse_type_name (int,TYPE_1__*) ;
 int parse_type_qualifier (int,TYPE_1__*) ;
 int parse_type_specifier (int,TYPE_1__*) ;
 int synpred_1 (int) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_align_as_type (TYPE_1__*,TYPE_1__*) ;
 int zend_ffi_align_as_val (TYPE_1__*,int *) ;

__attribute__((used)) static int parse_declaration_specifiers(int sym, zend_ffi_dcl *dcl) {
 do {
  switch (sym) {
   case 155:
    if (dcl->flags & ZEND_FFI_DCL_STORAGE_CLASS) yy_error_sym("unexpected", sym);
    sym = get_sym();
    dcl->flags |= ZEND_FFI_DCL_TYPEDEF;
    break;
   case 167:
    if (dcl->flags & ZEND_FFI_DCL_STORAGE_CLASS) yy_error_sym("unexpected", sym);
    sym = get_sym();
    dcl->flags |= ZEND_FFI_DCL_EXTERN;
    break;
   case 157:
    if (dcl->flags & ZEND_FFI_DCL_STORAGE_CLASS) yy_error_sym("unexpected", sym);
    sym = get_sym();
    dcl->flags |= ZEND_FFI_DCL_STATIC;
    break;
   case 173:
    if (dcl->flags & ZEND_FFI_DCL_STORAGE_CLASS) yy_error_sym("unexpected", sym);
    sym = get_sym();
    dcl->flags |= ZEND_FFI_DCL_AUTO;
    break;
   case 161:
    if (dcl->flags & ZEND_FFI_DCL_STORAGE_CLASS) yy_error_sym("unexpected", sym);
    sym = get_sym();
    dcl->flags |= ZEND_FFI_DCL_REGISTER;
    break;
   case 164:
   case 136:
   case 135:
    sym = get_sym();
    dcl->flags |= ZEND_FFI_DCL_INLINE;
    break;
   case 146:
    sym = get_sym();
    dcl->flags |= ZEND_FFI_DCL_NO_RETURN;
    break;
   case 150:
    sym = get_sym();
    if (sym != YY__LPAREN) {
     yy_error_sym("'(' expected, got", sym);
    }
    sym = get_sym();
    if ((YY_IN_SET(sym, (YY___EXTENSION__,152,172,159,163,162,166,169,158,153,148,147,171,142,141,156,154,168,165,170,140,139,160,134,133,151,129,128,149,145,144,138,143,132,137,131,130), "\002\000\376\377\377\107\360\017\000\000\000\002\000")) && synpred_1(sym)) {
     zend_ffi_dcl align_dcl = ZEND_FFI_ATTR_INIT;
     sym = parse_type_name(sym, &align_dcl);
     zend_ffi_align_as_type(dcl, &align_dcl);
    } else if (YY_IN_SET(sym, (YY__LPAREN,165,YY_OCTNUMBER,YY_DECNUMBER,YY_HEXNUMBER,YY_FLOATNUMBER,YY_STRING,YY_CHARACTER,YY__PLUS_PLUS,YY__MINUS_MINUS,YY__AND,YY__STAR,YY__PLUS,YY__MINUS,YY__TILDE,YY__BANG,YY_SIZEOF,YY__ALIGNOF,YY___ALIGNOF,YY___ALIGNOF__), "\010\000\000\000\000\000\001\000\004\030\377\376\000")) {
     zend_ffi_val align_val;
     sym = parse_constant_expression(sym, &align_val);
     zend_ffi_align_as_val(dcl, &align_val);
    } else {
     yy_error_sym("unexpected", sym);
    }
    if (sym != YY__RPAREN) {
     yy_error_sym("')' expected, got", sym);
    }
    sym = get_sym();
    break;
   case 145:
   case 144:
   case 138:
   case 143:
   case 132:
   case 137:
   case 131:
   case 130:
    sym = parse_attributes(sym, dcl);
    break;
   case 170:
   case 140:
   case 139:
   case 160:
   case 134:
   case 133:
   case 151:
   case 129:
   case 128:
   case 149:
    sym = parse_type_qualifier(sym, dcl);
    break;
   case 152:
   case 172:
   case 159:
   case 163:
   case 162:
   case 166:
   case 169:
   case 158:
   case 153:
   case 148:
   case 147:
   case 171:
   case 142:
   case 141:
   case 156:
   case 154:
   case 168:
   case 165:
    sym = parse_type_specifier(sym, dcl);
    break;
   default:
    yy_error_sym("unexpected", sym);
  }
 } while ((YY_IN_SET(sym, (155,167,157,173,161,164,136,135,146,150,145,144,138,143,132,137,131,130,170,140,139,160,134,133,151,129,128,149,152,172,159,163,162,166,169,158,153,148,147,171,142,141,156,154,168,165), "\200\377\377\377\377\107\360\017\000\000\000\002\000")) && (sym != 165 || !(dcl->flags & ZEND_FFI_DCL_TYPE_SPECIFIERS)));
 return sym;
}
