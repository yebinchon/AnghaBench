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
 struct mg_connection* FUNC0 (struct mg_mgr*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ s_exit_flag ; 
 char* s_url ; 

int FUNC6(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  FUNC2(&mgr, NULL);
  nc = FUNC0(&mgr, ev_handler, s_url, NULL, NULL);
  FUNC4(nc);

  FUNC5("Starting RESTful client against %s\n", s_url);
  while (s_exit_flag == 0) {
    FUNC3(&mgr, 1000);
  }
  FUNC1(&mgr);

  return 0;
}