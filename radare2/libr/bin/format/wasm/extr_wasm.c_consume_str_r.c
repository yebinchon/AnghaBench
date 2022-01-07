
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int RBuffer ;


 scalar_t__ R_BIN_WASM_STRING_LENGTH ;
 int R_MIN (scalar_t__,size_t) ;
 int r_buf_read (int *,int *,int ) ;
 scalar_t__ r_buf_size (int *) ;
 scalar_t__ r_buf_tell (int *) ;

__attribute__((used)) static size_t consume_str_r (RBuffer *b, ut64 max, size_t sz, char *out) {
 ut64 cur = r_buf_tell (b);
 if (!b || max >= r_buf_size (b) || cur > max) {
  return 0;
 }
 if (!(cur + sz - 1 <= max)) {
  return 0;
 }
 if (sz > 0) {
  r_buf_read (b, (ut8 *)out, R_MIN (R_BIN_WASM_STRING_LENGTH - 1, sz));
 } else {
  *out = 0;
 }
 return sz;
}
