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

/* Variables and functions */
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 

int FUNC5(void) {
  struct mg_mgr mgr;
  const char *port1 = "udp://1234", *port2 = "udp://127.0.0.1:17000";

  FUNC2(&mgr, NULL);
  FUNC0(&mgr, port1, ev_handler);
  FUNC0(&mgr, port2, ev_handler);

  FUNC4("Starting echo mgr on ports %s, %s\n", port1, port2);
  for (;;) {
    FUNC3(&mgr, 1000);
  }
  FUNC1(&mgr);

  return 0;
}