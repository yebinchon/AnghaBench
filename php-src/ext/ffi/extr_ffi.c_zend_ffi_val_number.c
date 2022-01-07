
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* kind; int i64; int u64; } ;
typedef TYPE_1__ zend_ffi_val ;


 void* ZEND_FFI_VAL_INT32 ;
 void* ZEND_FFI_VAL_INT64 ;
 void* ZEND_FFI_VAL_UINT32 ;
 void* ZEND_FFI_VAL_UINT64 ;
 int strtoll (char const*,int *,int) ;
 int strtoull (char const*,int *,int) ;

void zend_ffi_val_number(zend_ffi_val *val, int base, const char *str, size_t str_len)
{
 int u = 0;
 int l = 0;

 if (str[str_len-1] == 'u' || str[str_len-1] == 'U') {
  u = 1;
  if (str[str_len-2] == 'l' || str[str_len-2] == 'L') {
   l = 1;
   if (str[str_len-3] == 'l' || str[str_len-3] == 'L') {
    l = 2;
   }
  }
 } else if (str[str_len-1] == 'l' || str[str_len-1] == 'L') {
  l = 1;
  if (str[str_len-2] == 'l' || str[str_len-2] == 'L') {
   l = 2;
   if (str[str_len-3] == 'u' || str[str_len-3] == 'U') {
    u = 1;
   }
  } else if (str[str_len-2] == 'u' || str[str_len-2] == 'U') {
   u = 1;
  }
 }
 if (u) {
  val->u64 = strtoull(str, ((void*)0), base);
  if (l == 0) {
   val->kind = ZEND_FFI_VAL_UINT32;
  } else if (l == 1) {
   val->kind = (sizeof(long) == 4) ? ZEND_FFI_VAL_UINT32 : ZEND_FFI_VAL_UINT64;
  } else if (l == 2) {
   val->kind = ZEND_FFI_VAL_UINT64;
  }
 } else {
  val->i64 = strtoll(str, ((void*)0), base);
  if (l == 0) {
   val->kind = ZEND_FFI_VAL_INT32;
  } else if (l == 1) {
   val->kind = (sizeof(long) == 4) ? ZEND_FFI_VAL_INT32 : ZEND_FFI_VAL_INT64;
  } else if (l == 2) {
   val->kind = ZEND_FFI_VAL_INT64;
  }
 }
}
