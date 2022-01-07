
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int WS_OP_FLOW ;
 int WS_OP_NOP ;
 int WS_OP_PREF ;
 int WS_OP_STACK ;
 int WS_OP_UNK ;

__attribute__((used)) static int get_ws_pref_optype(const ut8 *buf, int len) {
 if (len < 1) {
  return WS_OP_UNK;
 }
 switch (buf[0]) {
 case ' ': return WS_OP_STACK;
 case '\t': return WS_OP_PREF;
 case 10: return WS_OP_FLOW;
 default: return WS_OP_NOP;
 }
}
