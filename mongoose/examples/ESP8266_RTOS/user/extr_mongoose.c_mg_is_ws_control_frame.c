
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char FLAGS_MASK_OP ;
 unsigned char WEBSOCKET_OP_CLOSE ;
 unsigned char WEBSOCKET_OP_PING ;
 unsigned char WEBSOCKET_OP_PONG ;

__attribute__((used)) static int mg_is_ws_control_frame(unsigned char flags) {
  unsigned char op = (flags & FLAGS_MASK_OP);
  return op == WEBSOCKET_OP_CLOSE || op == WEBSOCKET_OP_PING ||
         op == WEBSOCKET_OP_PONG;
}
