
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int WS_OP_ARITH ;
 int WS_OP_HEAP ;
 int WS_OP_IO ;
 int WS_OP_NOP ;
 int WS_OP_UNK ;

__attribute__((used)) static int get_ws_suf_optype(const ut8 *buf, int len) {
 if (len < 1) {
  return WS_OP_UNK;
 }
 switch (buf[0]) {
 case ' ': return WS_OP_ARITH;
 case '\t': return WS_OP_HEAP;
 case 10: return WS_OP_IO;
 default: return WS_OP_NOP;
 }
}
