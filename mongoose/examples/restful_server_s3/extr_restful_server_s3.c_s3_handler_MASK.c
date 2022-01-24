#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mg_connection {int /*<<< orphan*/  flags; scalar_t__ user_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  p; scalar_t__ len; } ;
struct http_message {int resp_code; TYPE_1__ message; } ;

/* Variables and functions */
#define  MG_EV_CLOSE 129 
#define  MG_EV_HTTP_REPLY 128 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*) ; 

__attribute__((used)) static void FUNC3(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  struct mg_connection *nc2 = (struct mg_connection *) nc->user_data;

  switch (ev) {
    case MG_EV_HTTP_REPLY:
      if (nc2 != NULL) {
        FUNC0(nc2, "%s%.*s",
                             (hm->resp_code == 200 ? "" : "Error: "),
                             (int) hm->message.len, hm->message.p);
        FUNC1(nc2, "", 0);
      }
      FUNC2(nc);
      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    case MG_EV_CLOSE:
      FUNC2(nc);
      break;
    default:
      break;
  }
}