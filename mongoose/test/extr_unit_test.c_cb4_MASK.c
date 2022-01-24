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
struct websocket_message {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct mg_str {char* p; int len; } ;
struct mg_connection {scalar_t__ user_data; } ;
struct http_message {int resp_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MG_EV_WEBSOCKET_FRAME ; 
 int MG_EV_WEBSOCKET_HANDSHAKE_DONE ; 
 int /*<<< orphan*/  WEBSOCKET_OP_CLOSE ; 
 int /*<<< orphan*/  WEBSOCKET_OP_TEXT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ ,struct mg_str*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC5(struct mg_connection *nc, int ev, void *ev_data) {
  char *buf = (char *) nc->user_data;
  if (ev == MG_EV_WEBSOCKET_FRAME) {
    struct websocket_message *wm = (struct websocket_message *) ev_data;
    FUNC0(("client data '%.*s'", (int) wm->size, wm->data));
    FUNC1(buf, wm->data, wm->size);
    FUNC2(nc, WEBSOCKET_OP_CLOSE, NULL, 0);
  } else if (ev == MG_EV_WEBSOCKET_HANDSHAKE_DONE) {
    struct http_message *hm = (struct http_message *) ev_data;
    FUNC0(("code %d", hm->resp_code));
    if (hm->resp_code == 101) {
      /* Send "hi" to server. server must reply "A". */
      struct mg_str h[2];
      h[0].p = "h";
      h[0].len = 1;
      h[1].p = "i";
      h[1].len = 1;
      FUNC3(nc, WEBSOCKET_OP_TEXT, h, 2);
    } else {
      FUNC4(buf, 20, "code %d", hm->resp_code);
    }
  }
}