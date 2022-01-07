
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unhealthyPoints; int knownFailureCode; scalar_t__ isSecure; } ;
typedef TYPE_1__ ws_info ;
struct espconn {scalar_t__ reverse; } ;


 int NODE_DBG (char*) ;
 int WS_OPCODE_PING ;
 scalar_t__ WS_UNHEALTHY_THRESHOLD ;
 int espconn_disconnect (struct espconn*) ;
 int espconn_secure_disconnect (struct espconn*) ;
 int ws_sendFrame (struct espconn*,int ,int *,int ) ;

__attribute__((used)) static void ws_sendPingTimeout(void *arg) {
  NODE_DBG("ws_sendPingTimeout \n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  if (ws->unhealthyPoints == WS_UNHEALTHY_THRESHOLD) {

    ws->knownFailureCode = -19;

    if (ws->isSecure)
      espconn_secure_disconnect(conn);
    else
      espconn_disconnect(conn);
    return;
  }

  ws_sendFrame(conn, WS_OPCODE_PING, ((void*)0), 0);
  ws->unhealthyPoints += 1;
}
