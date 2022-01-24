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
struct mg_connection {void* user_data; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
#define  MG_EV_CLOSE 130 
#define  MG_EV_HTTP_REQUEST 129 
#define  MG_EV_TIMER 128 
 int /*<<< orphan*/  MG_F_SEND_AND_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct mg_connection *nc, int ev,
                                void *ev_data) {
  (void) ev_data;
  switch (ev) {
    case MG_EV_HTTP_REQUEST:
      if (nc->user_data) break;

      nc->user_data = (void *) FUNC1(sizeof(int));
      (*(int *) nc->user_data) = 0;
      FUNC5(nc, FUNC6() + 0.01);

      FUNC2(nc, "%s",
                "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");
      break;
    case MG_EV_TIMER:
      FUNC3(nc, "%d", (*(int *) nc->user_data)++);
      if (*(int *) nc->user_data == 10) {
        FUNC4(nc, "", 0);
        nc->flags |= MG_F_SEND_AND_CLOSE;
      } else {
        FUNC5(nc, FUNC6() + 0.01);
      }
      break;
    case MG_EV_CLOSE:
      FUNC0(nc->user_data);
    default:
      break;
  }
}