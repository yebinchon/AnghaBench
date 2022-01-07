
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connectionState; int conn; scalar_t__ isSecure; } ;
typedef TYPE_1__ ws_info ;
struct espconn {scalar_t__ reverse; } ;


 int NODE_DBG (char*) ;
 int espconn_disconnect (int ) ;
 int espconn_secure_disconnect (int ) ;

__attribute__((used)) static void ws_forceCloseTimeout(void *arg) {
  NODE_DBG("ws_forceCloseTimeout\n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  if (ws->connectionState == 0 || ws->connectionState == 4) {
    return;
  }

  if (ws->isSecure)
    espconn_secure_disconnect(ws->conn);
  else
    espconn_disconnect(ws->conn);
}
