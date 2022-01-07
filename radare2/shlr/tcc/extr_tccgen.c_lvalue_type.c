
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VT_BOOL ;
 int VT_BTYPE ;
 int VT_INT16 ;
 int VT_INT8 ;
 int VT_LVAL ;
 int VT_LVAL_BYTE ;
 int VT_LVAL_SHORT ;
 int VT_LVAL_UNSIGNED ;
 int VT_UNSIGNED ;

int lvalue_type(int t) {
 int bt, r;
 r = VT_LVAL;
 bt = t & VT_BTYPE;
 if (bt == VT_INT8 || bt == VT_BOOL) {
  r |= VT_LVAL_BYTE;
 } else if (bt == VT_INT16) {
  r |= VT_LVAL_SHORT;
 } else {
  return r;
 }
 if (t & VT_UNSIGNED) {
  r |= VT_LVAL_UNSIGNED;
 }
 return r;
}
