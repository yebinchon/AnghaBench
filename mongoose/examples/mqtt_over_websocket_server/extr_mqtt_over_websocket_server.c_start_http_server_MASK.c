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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  http_handler ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(struct mg_mgr *mgr, const char *addr) {
  struct mg_connection *c;
  if ((c = FUNC2(mgr, addr, http_handler)) == NULL) {
    FUNC1(stderr, "Cannot start HTTP server on port [%s]\n", addr);
    FUNC0(EXIT_FAILURE);
  }
  FUNC3(c);
  FUNC4("HTTP server started on %s\n", addr);
}