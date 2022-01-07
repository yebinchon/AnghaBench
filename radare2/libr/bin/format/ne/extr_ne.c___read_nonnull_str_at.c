
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef scalar_t__ ut64 ;
typedef int RBuffer ;


 char* malloc (scalar_t__) ;
 size_t r_buf_read8_at (int *,scalar_t__) ;
 int r_buf_read_at (int *,scalar_t__,size_t*,size_t) ;

__attribute__((used)) static char *__read_nonnull_str_at(RBuffer *buf, ut64 offset) {
 ut8 sz = r_buf_read8_at (buf, offset);
 if (!sz) {
  return ((void*)0);
 }
 char *str = malloc ((ut64)sz + 1);
 if (!str) {
  return ((void*)0);
 }
 r_buf_read_at (buf, offset + 1, (ut8 *)str, sz);
 str[sz] = '\0';
 return str;
}
