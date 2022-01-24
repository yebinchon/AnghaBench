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
struct websocket_message {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct mg_str {char* member_0; int /*<<< orphan*/  member_1; } ;
struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;

/* Variables and functions */
#define  MG_EV_CLOSE 131 
#define  MG_EV_HTTP_REQUEST 130 
#define  MG_EV_WEBSOCKET_FRAME 129 
#define  MG_EV_WEBSOCKET_HANDSHAKE_DONE 128 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,struct mg_str) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*) ; 
 struct mg_str FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,struct http_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_http_server_opts ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc, int ev, void *ev_data) {
  switch (ev) {
    case MG_EV_WEBSOCKET_HANDSHAKE_DONE: {
      /* New websocket connection. Tell everybody. */
      FUNC0(nc, FUNC2("++ joined"));
      break;
    }
    case MG_EV_WEBSOCKET_FRAME: {
      struct websocket_message *wm = (struct websocket_message *) ev_data;
      /* New websocket message. Tell everybody. */
      struct mg_str d = {(char *) wm->data, wm->size};
      FUNC0(nc, d);
      break;
    }
    case MG_EV_HTTP_REQUEST: {
      FUNC3(nc, (struct http_message *) ev_data, s_http_server_opts);
      break;
    }
    case MG_EV_CLOSE: {
      /* Disconnect. Tell everybody. */
      if (FUNC1(nc)) {
        FUNC0(nc, FUNC2("-- left"));
      }
      break;
    }
  }
}