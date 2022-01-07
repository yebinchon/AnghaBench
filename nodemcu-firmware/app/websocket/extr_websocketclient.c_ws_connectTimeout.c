
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int knownFailureCode; } ;
typedef TYPE_1__ ws_info ;
struct espconn {scalar_t__ reverse; } ;


 int NODE_DBG (char*) ;
 int disconnect_callback (void*) ;

__attribute__((used)) static void ws_connectTimeout(void *arg) {
  NODE_DBG("ws_connectTimeout\n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  ws->knownFailureCode = -18;
  disconnect_callback(arg);
}
