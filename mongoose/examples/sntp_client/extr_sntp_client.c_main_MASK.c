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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 struct mg_connection* FUNC4 (struct mg_mgr*,int /*<<< orphan*/ ,char*) ; 
 char* s_default_server ; 
 scalar_t__ s_exit_flag ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5() {
  struct mg_mgr mgr;
  struct mg_connection *c;

  FUNC2(&mgr, NULL);

  c = FUNC4(&mgr, ev_handler, s_default_server);

  if (c == NULL) {
    FUNC0(stderr, "Failed to connect to %s\n", s_default_server);
    return -1;
  }

  while (s_exit_flag == 0) {
    FUNC3(&mgr, 1000);
  }

  FUNC1(&mgr);

  return 0;
}