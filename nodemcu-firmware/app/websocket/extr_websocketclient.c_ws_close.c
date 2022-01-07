
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connectionState; int timeoutTimer; int conn; scalar_t__ knownFailureCode; } ;
typedef TYPE_1__ ws_info ;
typedef int os_timer_func_t ;


 int NODE_DBG (char*) ;
 int SWTIMER_REG_CB (scalar_t__,int ) ;
 int SWTIMER_RESUME ;
 int WS_FORCE_CLOSE_TIMEOUT_MS ;
 int WS_OPCODE_CLOSE ;
 int disconnect_callback (int ) ;
 int os_timer_arm (int *,int ,int) ;
 int os_timer_disarm (int *) ;
 int os_timer_setfn (int *,int *,int ) ;
 scalar_t__ ws_forceCloseTimeout ;
 int ws_sendFrame (int ,int ,int *,int ) ;

void ws_close(ws_info *ws) {
  NODE_DBG("ws_close\n");

  if (ws->connectionState == 0 || ws->connectionState == 4) {
    return;
  }

  ws->knownFailureCode = 0;
  if (ws->connectionState == 1) {
    disconnect_callback(ws->conn);
  } else {
    ws_sendFrame(ws->conn, WS_OPCODE_CLOSE, ((void*)0), 0);

    os_timer_disarm(&ws->timeoutTimer);
    os_timer_setfn(&ws->timeoutTimer, (os_timer_func_t *) ws_forceCloseTimeout, ws->conn);
    SWTIMER_REG_CB(ws_forceCloseTimeout, SWTIMER_RESUME);
    os_timer_arm(&ws->timeoutTimer, WS_FORCE_CLOSE_TIMEOUT_MS, 0);
  }
}
