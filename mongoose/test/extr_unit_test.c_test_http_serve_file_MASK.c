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
struct mg_connection {char* user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  c_str_ne ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  serve_file_cb ; 

__attribute__((used)) static const char *FUNC9(void) {
  struct mg_mgr mgr;
  struct mg_connection *lc, *nc;
  const char *local_addr = "127.0.0.1:7777";
  char status[100];
  FUNC5(&mgr, NULL);
  /* mgr.hexdump_file = "-"; */
  FUNC0((lc = FUNC2(&mgr, local_addr, serve_file_cb)) != NULL);
  FUNC7(lc);
  FUNC0((nc = FUNC3(&mgr, local_addr, serve_file_cb)) != NULL);
  FUNC7(nc);
  status[0] = '\0';
  nc->user_data = status;
  FUNC6(nc, "GET / HTTP/1.1\r\n\r\n");
  FUNC8(&mgr, 5, c_str_ne, status, (void *) "");
  FUNC1(status, "success");
  FUNC4(&mgr);
  return NULL;
}