#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct websocket_message {int /*<<< orphan*/  data; scalar_t__ size; int /*<<< orphan*/  flags; } ;
struct mg_connection {scalar_t__ user_data; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int MG_EV_CLOSE ; 
 int MG_EV_WEBSOCKET_CONTROL_FRAME ; 
 int MG_EV_WEBSOCKET_FRAME ; 
 int MG_EV_WEBSOCKET_HANDSHAKE_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,char*,int) ; 
 int FUNC2 (char**,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int s_ws_client1_connected ; 

__attribute__((used)) static void FUNC3(struct mg_connection *nc, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;

  if (ev == MG_EV_WEBSOCKET_FRAME || ev == MG_EV_WEBSOCKET_CONTROL_FRAME) {
    char *tmp = NULL;
    int tmplen;
    tmplen =
        FUNC2(&tmp, 0, "%s%.2x:[%.*s]",
                    (ev == MG_EV_WEBSOCKET_CONTROL_FRAME ? "CONTROL:" : ""),
                    wm->flags, (int) wm->size, wm->data);
    FUNC1((struct mbuf *) nc->user_data, tmp, tmplen);
    FUNC0(tmp);
  } else if (ev == MG_EV_CLOSE) {
    s_ws_client1_connected = 0;
  } else if (ev == MG_EV_WEBSOCKET_HANDSHAKE_DONE) {
    s_ws_client1_connected = 1;
  }
}