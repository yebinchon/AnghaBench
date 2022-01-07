
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* str; size_t len; int kind; int i64; } ;
typedef TYPE_2__ zend_ffi_val ;
struct TYPE_8__ {scalar_t__ kind; TYPE_1__* type; int value; } ;
typedef TYPE_3__ zend_ffi_symbol ;
struct TYPE_6__ {int kind; } ;


 scalar_t__ FFI_G (int ) ;
 scalar_t__ UNEXPECTED (scalar_t__) ;
 int ZEND_ASSERT (int ) ;
 scalar_t__ ZEND_FFI_SYM_CONST ;
 int ZEND_FFI_VAL_ERROR ;
 int ZEND_FFI_VAL_INT32 ;
 int ZEND_FFI_VAL_INT64 ;
 int ZEND_FFI_VAL_NAME ;
 int ZEND_FFI_VAL_UINT32 ;
 int ZEND_FFI_VAL_UINT64 ;
 int attribute_parsing ;
 int symbols ;
 TYPE_3__* zend_hash_str_find_ptr (scalar_t__,char const*,size_t) ;

void zend_ffi_resolve_const(const char *name, size_t name_len, zend_ffi_val *val)
{
 zend_ffi_symbol *sym;

 if (UNEXPECTED(FFI_G(attribute_parsing))) {
  val->kind = ZEND_FFI_VAL_NAME;
  val->str = name;
  val->len = name_len;
  return;
 } else if (FFI_G(symbols)) {
  sym = zend_hash_str_find_ptr(FFI_G(symbols), name, name_len);
  if (sym && sym->kind == ZEND_FFI_SYM_CONST) {
   val->i64 = sym->value;
   switch (sym->type->kind) {
    case 132:
    case 135:
    case 134:
     val->kind = ZEND_FFI_VAL_INT32;
     break;
    case 133:
     val->kind = ZEND_FFI_VAL_INT64;
     break;
    case 128:
    case 131:
    case 130:
     val->kind = ZEND_FFI_VAL_UINT32;
     break;
    case 129:
     val->kind = ZEND_FFI_VAL_UINT64;
     break;
    default:
     ZEND_ASSERT(0);
   }
   return;
  }
 }
 val->kind = ZEND_FFI_VAL_ERROR;
}
