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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  c_str_ne ; 
 int /*<<< orphan*/  cb5 ; 
 struct mg_connection* FUNC1 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int,int /*<<< orphan*/ ,char*,void*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static const char *FUNC6(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  char buf[100] = "0";

  FUNC3(&mgr, NULL);
  FUNC0((nc = FUNC1(&mgr, "127.0.0.1:33211", cb5)) != NULL);
  nc->user_data = buf;
  FUNC4(&mgr, 1, c_str_ne, buf, (void *) "0");
  FUNC2(&mgr);

/* printf("failed connect status: [%s]\n", buf); */
/* TODO(lsm): fix this for Win32 */
#ifndef _WIN32
  FUNC0(FUNC5(buf, "0") != 0);
#endif

  return NULL;
}