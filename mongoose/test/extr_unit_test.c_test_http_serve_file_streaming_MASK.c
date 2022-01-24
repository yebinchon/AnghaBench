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
struct mg_connection {int* user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  c_int_ne ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int,int /*<<< orphan*/ ,int*,void*) ; 
 int /*<<< orphan*/  srv1 ; 
 int /*<<< orphan*/  srv2 ; 

__attribute__((used)) static const char *FUNC9(void) {
  struct mg_mgr mgr;
  struct mg_connection *lc, *nc;
  const char *local_addr = "127.0.0.1:7732";
  int status = 0;
  FUNC5(&mgr, NULL);
  FUNC0((lc = FUNC2(&mgr, local_addr, srv1)) != NULL);
  FUNC7(lc);
  FUNC0((nc = FUNC3(&mgr, local_addr, srv2)) != NULL);
  FUNC7(nc);
  nc->user_data = &status;
  FUNC6(nc, "GET / HTTP/1.0\r\n\r\n");
  FUNC8(&mgr, 30, c_int_ne, &status, (void *) 0);
  FUNC1(status, 1);
  FUNC4(&mgr);
  return NULL;
}