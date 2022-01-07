
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conn; } ;
typedef TYPE_1__ ws_info ;


 int NODE_DBG (char*) ;
 int ws_sendFrame (int ,int,char const*,unsigned short) ;

void ws_send(ws_info *ws, int opCode, const char *message, unsigned short length) {
  NODE_DBG("ws_send\n");
  ws_sendFrame(ws->conn, opCode, message, length);
}
