
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kind; } ;
typedef TYPE_1__ zend_ffi_val ;
typedef int zend_ffi_dcl ;
typedef int int64_t ;


 int YY__EQUAL ;
 int ZEND_FFI_VAL_EMPTY ;
 int get_sym () ;
 int parse_ID (int,char const**,size_t*) ;
 int parse_constant_expression (int,TYPE_1__*) ;
 int zend_ffi_add_enum_val (int *,char const*,size_t,TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static int parse_enumerator(int sym, zend_ffi_dcl *enum_dcl, int64_t *min, int64_t *max, int64_t *last) {
 const char *name;
 size_t name_len;
 zend_ffi_val val = {.kind = ZEND_FFI_VAL_EMPTY};
 sym = parse_ID(sym, &name, &name_len);
 if (sym == YY__EQUAL) {
  sym = get_sym();
  sym = parse_constant_expression(sym, &val);
 }
 zend_ffi_add_enum_val(enum_dcl, name, name_len, &val, min, max, last);
 return sym;
}
