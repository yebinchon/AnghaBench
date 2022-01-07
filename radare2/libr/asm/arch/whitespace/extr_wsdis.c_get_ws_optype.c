
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 scalar_t__ WS_OP_NOP ;
 scalar_t__ WS_OP_PREF ;
 int get_ws_pref_optype (int const*,int) ;
 int get_ws_suf_optype (int const*,int) ;

int get_ws_optype(const ut8 *buf, int len) {
 const ut8 *ptr;
 if (get_ws_pref_optype (buf, len) == WS_OP_PREF) {
  ptr = buf + 1;
  while (get_ws_suf_optype (ptr, len - (ptr - buf)) == WS_OP_NOP) {
   ptr++;
  }
  return get_ws_suf_optype (ptr, len - (ptr - buf));
 }
 return get_ws_pref_optype (buf, len);
}
