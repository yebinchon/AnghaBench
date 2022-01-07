
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef scalar_t__ ut32 ;
struct r_bin_wasm_resizable_limits_t {int maximum; scalar_t__ flags; int initial; } ;
typedef int RBuffer ;


 int R_ABS (scalar_t__) ;
 int consume_u32_r (int *,scalar_t__,int *) ;
 int consume_u7_r (int *,scalar_t__,scalar_t__*) ;
 scalar_t__ r_buf_size (int *) ;
 scalar_t__ r_buf_tell (int *) ;

__attribute__((used)) static size_t consume_limits_r (RBuffer *b, ut64 max, struct r_bin_wasm_resizable_limits_t *out) {
 if (!b || max >= r_buf_size (b) || r_buf_tell (b) > max || !out) {
  return 0;
 }
 ut32 i = r_buf_tell (b);
 if (!(consume_u7_r (b, max, &out->flags))) {
  return 0;
 }
 if (!(consume_u32_r (b, max, &out->initial))) {
  return 0;
 }
 if (out->flags && (!(consume_u32_r (b, max, &out->maximum)))) {
  return 0;
 }
 return (size_t)R_ABS (r_buf_tell (b) - i);
}
