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
 int /*<<< orphan*/  MG_LISTEN_ADDR ; 
 int /*<<< orphan*/  ev_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 char* FUNC7 () ; 

__attribute__((used)) static void FUNC8(void *arg) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  FUNC4("\r\n\r\nSDK version: %s\r\n", FUNC7());
  FUNC4("Free RAM: %d\r\n", FUNC6());
  FUNC5();

  FUNC1(&mgr, NULL);

  nc = FUNC0(&mgr, MG_LISTEN_ADDR, ev_handler);
  if (nc == NULL) {
    FUNC4("Error setting up listener!\n");
    return;
  }
  FUNC3(nc);

  while (1) {
    FUNC2(&mgr, 1000);
  }
}