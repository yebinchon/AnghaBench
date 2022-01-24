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
struct websocket_message {int /*<<< orphan*/  data; scalar_t__ size; } ;
struct mg_connection {scalar_t__ user_data; } ;

/* Variables and functions */
#define  MG_EV_WEBSOCKET_FRAME 130 
#define  MG_EV_WEBSOCKET_HANDSHAKE_DONE 129 
#define  MG_EV_WEBSOCKET_HANDSHAKE_REQUEST 128 
 int /*<<< orphan*/  WEBSOCKET_OP_TEXT ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(struct mg_connection *c, int ev, void *ev_data) {
  struct websocket_message *wm = (struct websocket_message *) ev_data;
  char *buf = (char *) c->user_data;

  switch (ev) {
    case MG_EV_WEBSOCKET_HANDSHAKE_REQUEST:
      FUNC2(buf, "R");
      if (buf[0] != '0') {
        FUNC0(c, 403, "I don't like you");
      }
      break;
    case MG_EV_WEBSOCKET_HANDSHAKE_DONE:
      FUNC2(buf, "D");
      break;
    case MG_EV_WEBSOCKET_FRAME:
      FUNC2(buf, "F");
      FUNC1(c, WEBSOCKET_OP_TEXT, "%s|%.*s", buf,
                                (int) wm->size, wm->data);
      break;
  }
}