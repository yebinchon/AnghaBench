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
struct mg_connection {int /*<<< orphan*/  flags; scalar_t__ user_data; } ;
struct http_message {int dummy; } ;

/* Variables and functions */
 int MG_EV_HTTP_REPLY ; 
 int MG_EV_HTTP_REQUEST ; 
 int /*<<< orphan*/  MG_F_CLOSE_IMMEDIATELY ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,struct http_message*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct http_message*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  char *user_data = (char *) nc->user_data;

  if (ev == MG_EV_HTTP_REQUEST) {
    FUNC0(nc, hm, "unit_test.c", FUNC1("text/plain"),
                       FUNC1(""));
  } else if (ev == MG_EV_HTTP_REPLY) {
    FUNC3(user_data, FUNC2(hm));
    nc->flags |= MG_F_CLOSE_IMMEDIATELY;
  }
}