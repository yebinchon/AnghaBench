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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* s_listening_addr ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(void) {
  struct mg_mgr mgr;
  struct mg_connection *c;

  FUNC4(&mgr, NULL);

  if ((c = FUNC2(&mgr, s_listening_addr, NULL)) == NULL) {
    FUNC1(stderr, "mg_bind(%s) failed\n", s_listening_addr);
    FUNC0(EXIT_FAILURE);
  }
  FUNC6(c);

  FUNC7("Starting socks5 proxy server on %s\n", s_listening_addr);
  for (;;) {
    FUNC5(&mgr, 1000);
  }
  FUNC3(&mgr);

  return 0;
}