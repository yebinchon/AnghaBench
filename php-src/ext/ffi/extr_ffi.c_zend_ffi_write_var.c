
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_4__ {scalar_t__ kind; int type; int addr; scalar_t__ is_const; } ;
typedef TYPE_1__ zend_ffi_symbol ;
struct TYPE_5__ {scalar_t__ symbols; } ;
typedef TYPE_2__ zend_ffi ;


 scalar_t__ ZEND_FFI_SYM_VAR ;
 int ZEND_FFI_TYPE (int ) ;
 int ZSTR_VAL (int *) ;
 int zend_ffi_exception_ce ;
 int zend_ffi_zval_to_cdata (int ,int ,int *) ;
 TYPE_1__* zend_hash_find_ptr (scalar_t__,int *) ;
 int zend_throw_error (int ,char*,int ) ;

__attribute__((used)) static zval *zend_ffi_write_var(zend_object *obj, zend_string *var_name, zval *value, void **cache_slot)
{
 zend_ffi *ffi = (zend_ffi*)obj;
 zend_ffi_symbol *sym = ((void*)0);

 if (ffi->symbols) {
  sym = zend_hash_find_ptr(ffi->symbols, var_name);
  if (sym && sym->kind != ZEND_FFI_SYM_VAR) {
   sym = ((void*)0);
  }
 }
 if (!sym) {
  zend_throw_error(zend_ffi_exception_ce, "Attempt to assign undefined C variable '%s'", ZSTR_VAL(var_name));
  return value;
 }

 if (sym->is_const) {
  zend_throw_error(zend_ffi_exception_ce, "Attempt to assign read-only C variable '%s'", ZSTR_VAL(var_name));
  return value;
 }

 zend_ffi_zval_to_cdata(sym->addr, ZEND_FFI_TYPE(sym->type), value);
 return value;
}
