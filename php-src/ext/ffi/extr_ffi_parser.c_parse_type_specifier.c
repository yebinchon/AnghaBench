
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ zend_ffi_dcl ;
 int ZEND_FFI_DCL_BOOL ;
 int ZEND_FFI_DCL_CHAR ;
 int ZEND_FFI_DCL_COMPLEX ;
 int ZEND_FFI_DCL_DOUBLE ;
 int ZEND_FFI_DCL_FLOAT ;
 int ZEND_FFI_DCL_INT ;
 int ZEND_FFI_DCL_LONG ;
 int ZEND_FFI_DCL_LONG_LONG ;
 int ZEND_FFI_DCL_SHORT ;
 int ZEND_FFI_DCL_SIGNED ;
 int ZEND_FFI_DCL_TYPEDEF_NAME ;
 int ZEND_FFI_DCL_TYPE_SPECIFIERS ;
 int ZEND_FFI_DCL_UNSIGNED ;
 int ZEND_FFI_DCL_VOID ;
 int get_sym () ;
 int parse_ID (int,char const**,size_t*) ;
 int parse_enum_specifier (int,TYPE_1__*) ;
 int parse_struct_or_union_specifier (int,TYPE_1__*) ;
 int yy_error_sym (char*,int) ;
 int zend_ffi_resolve_typedef (char const*,size_t,TYPE_1__*) ;

__attribute__((used)) static int parse_type_specifier(int sym, zend_ffi_dcl *dcl) {
 const char *name;
 size_t name_len;
 switch (sym) {
  case 132:
   if (dcl->flags & ZEND_FFI_DCL_TYPE_SPECIFIERS) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_VOID;
   break;
  case 145:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_SIGNED|ZEND_FFI_DCL_UNSIGNED))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_CHAR;
   break;
  case 137:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_SIGNED|ZEND_FFI_DCL_UNSIGNED|ZEND_FFI_DCL_INT))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_SHORT;
   break;
  case 139:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_SIGNED|ZEND_FFI_DCL_UNSIGNED|ZEND_FFI_DCL_SHORT|ZEND_FFI_DCL_LONG|ZEND_FFI_DCL_LONG_LONG))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_INT;
   break;
  case 138:
   if (dcl->flags & ZEND_FFI_DCL_LONG) {
    if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_LONG|ZEND_FFI_DCL_SIGNED|ZEND_FFI_DCL_UNSIGNED|ZEND_FFI_DCL_INT))) yy_error_sym("unexpected", sym);
    dcl->flags |= ZEND_FFI_DCL_LONG_LONG;
   } else {
    if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_LONG|ZEND_FFI_DCL_SIGNED|ZEND_FFI_DCL_UNSIGNED|ZEND_FFI_DCL_INT|ZEND_FFI_DCL_DOUBLE|ZEND_FFI_DCL_COMPLEX))) yy_error_sym("unexpected", sym);
    dcl->flags |= ZEND_FFI_DCL_LONG;
   }
   sym = get_sym();
   break;
  case 141:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_COMPLEX))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_FLOAT;
   break;
  case 143:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_LONG|ZEND_FFI_DCL_COMPLEX))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_DOUBLE;
   break;
  case 136:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_CHAR|ZEND_FFI_DCL_SHORT|ZEND_FFI_DCL_LONG|ZEND_FFI_DCL_LONG_LONG|ZEND_FFI_DCL_INT))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_SIGNED;
   break;
  case 133:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_CHAR|ZEND_FFI_DCL_SHORT|ZEND_FFI_DCL_LONG|ZEND_FFI_DCL_LONG_LONG|ZEND_FFI_DCL_INT))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_UNSIGNED;
   break;
  case 131:
   if (dcl->flags & ZEND_FFI_DCL_TYPE_SPECIFIERS) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_BOOL;
   break;
  case 130:
  case 144:
  case 129:
  case 128:
   if (dcl->flags & (ZEND_FFI_DCL_TYPE_SPECIFIERS-(ZEND_FFI_DCL_FLOAT|ZEND_FFI_DCL_DOUBLE|ZEND_FFI_DCL_LONG))) yy_error_sym("unexpected", sym);
   sym = get_sym();
   dcl->flags |= ZEND_FFI_DCL_COMPLEX;
   break;
  case 135:
  case 134:
   if (dcl->flags & ZEND_FFI_DCL_TYPE_SPECIFIERS) yy_error_sym("unexpected", sym);
   sym = parse_struct_or_union_specifier(sym, dcl);
   break;
  case 142:
   if (dcl->flags & ZEND_FFI_DCL_TYPE_SPECIFIERS) yy_error_sym("unexpected", sym);
   sym = parse_enum_specifier(sym, dcl);
   break;
  case 140:
   if (dcl->flags & ZEND_FFI_DCL_TYPE_SPECIFIERS) yy_error_sym("unexpected", sym);

   sym = parse_ID(sym, &name, &name_len);
   dcl->flags |= ZEND_FFI_DCL_TYPEDEF_NAME;
   zend_ffi_resolve_typedef(name, name_len, dcl);
   break;
  default:
   yy_error_sym("unexpected", sym);
 }
 return sym;
}
