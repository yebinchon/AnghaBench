
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char FLAGS_MASK_FIN ;
 unsigned char FLAGS_MASK_OP ;
 unsigned char WEBSOCKET_OP_CONTINUE ;

__attribute__((used)) static int mg_is_ws_fragment(unsigned char flags) {
  return (flags & FLAGS_MASK_FIN) == 0 ||
         (flags & FLAGS_MASK_OP) == WEBSOCKET_OP_CONTINUE;
}
