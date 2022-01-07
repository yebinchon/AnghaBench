
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int knownFailureCode; scalar_t__ isSecure; } ;
typedef TYPE_1__ ws_info ;
struct espconn {scalar_t__ reverse; } ;


 int NODE_DBG (char*) ;
 int espconn_disconnect (struct espconn*) ;
 int espconn_secure_disconnect (struct espconn*) ;

__attribute__((used)) static void ws_closeSentCallback(void *arg) {
  NODE_DBG("ws_closeSentCallback \n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  if (ws == ((void*)0)) {
    NODE_DBG("ws is unexpectly null\n");
    return;
  }

  ws->knownFailureCode = -6;

  if (ws->isSecure)
    espconn_secure_disconnect(conn);
  else
    espconn_disconnect(conn);
}
