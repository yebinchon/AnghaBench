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
typedef  int /*<<< orphan*/  user ;
struct mg_str {int dummy; } ;
struct mg_connection {scalar_t__ user_data; } ;
struct http_message {int dummy; } ;
typedef  int /*<<< orphan*/  pass ;

/* Variables and functions */
#define  MG_EV_HTTP_REQUEST 129 
#define  MG_EV_WEBSOCKET_HANDSHAKE_REQUEST 128 
 int FUNC0 (struct http_message*,char*,int,char*,int) ; 
 struct mg_str* FUNC1 (struct http_message*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_str*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc, int ev,
                                     void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  struct mg_str *hdr;
  char user[256] = "";
  char pass[256] = "";
  int res;

  switch (ev) {
    case MG_EV_WEBSOCKET_HANDSHAKE_REQUEST:
    case MG_EV_HTTP_REQUEST: {
      hdr = FUNC1(hm, "Sec-WebSocket-Protocol");
      if (hdr != NULL) {
        if (FUNC2(hdr, "myproto") == 0) {
          *(int *) nc->user_data = 2;
          break;
        }
      }

      res = FUNC0(hm, user, sizeof(user), pass, sizeof(pass));
      if (res == -1) {
        *(int *) nc->user_data = -1;
        break;
      }

      if (FUNC3(user, "foo") == 0 && FUNC3(pass, "bar") == 0) {
        *(int *) nc->user_data = 1;
      } else {
        *(int *) nc->user_data = -2;
      }

      break;
    }
  }
}