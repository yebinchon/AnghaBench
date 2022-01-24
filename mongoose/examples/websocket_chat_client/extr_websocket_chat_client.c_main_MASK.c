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
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct mg_connection* FUNC1 (struct mg_mgr*,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  s_done ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(int argc, char **argv) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  const char *chat_server_url = argc > 1 ? argv[1] : "ws://127.0.0.1:8000";

  FUNC3(&mgr, NULL);

  nc = FUNC1(&mgr, ev_handler, chat_server_url, "ws_chat", NULL);
  if (nc == NULL) {
    FUNC0(stderr, "Invalid address\n");
    return 1;
  }

  while (!s_done) {
    FUNC4(&mgr, 100);
  }
  FUNC2(&mgr);

  return 0;
}