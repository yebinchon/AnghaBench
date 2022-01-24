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
 int /*<<< orphan*/  FUNC0 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  c_int_eq ; 
 int /*<<< orphan*/  http_pipeline_handler ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int,int /*<<< orphan*/ ,int*,void*) ; 

__attribute__((used)) static const char *FUNC9(void) {
  struct mg_mgr mgr;
  struct mg_connection *lc, *nc1;
  const char *local_addr = "127.0.0.1:7777";
  int status = 0;

  FUNC5(&mgr, (void *) &status);
  FUNC0(lc = FUNC2(&mgr, local_addr, http_pipeline_handler));
  FUNC7(lc);
  FUNC0(nc1 = FUNC3(&mgr, local_addr, http_pipeline_handler));
  FUNC7(nc1);
  FUNC6(nc1, "GET / HTTP/1.1\r\n\r\nGET / HTTP/1.1\r\n\r\n");
  FUNC8(&mgr, 1, c_int_eq, &status, (void *) 22);
  FUNC1(status, 22);
  FUNC4(&mgr);
  return NULL;
}