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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  c_int_eq ; 
 struct mg_connection* FUNC1 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int,int /*<<< orphan*/ ,int*,void*) ; 
 int /*<<< orphan*/  test_auth_client_handler ; 
 int /*<<< orphan*/  test_auth_server_handler ; 

__attribute__((used)) static const char *FUNC8() {
  int connected;
  struct mg_connection *nc;
  struct mg_mgr mgr;
  FUNC5(&mgr, NULL);

  nc = FUNC1(&mgr, "127.0.0.1:1234", test_auth_server_handler);
  FUNC6(nc);
  nc->user_data = &connected;

  connected = 0;
  FUNC2(&mgr, test_auth_client_handler,
                  "http://foo:bar@127.0.0.1:1234", NULL, NULL);
  FUNC7(&mgr, 4, c_int_eq, &connected, (void *) 1);
  FUNC0(connected, 1);

  connected = 0;
  FUNC3(&mgr, test_auth_client_handler, "ws://foo:bar@127.0.0.1:1234",
                NULL, NULL);
  FUNC7(&mgr, 4, c_int_eq, &connected, (void *) 1);
  FUNC0(connected, 1);

  /* check that we didn't break proto or other headers */
  connected = 0;
  FUNC3(&mgr, test_auth_client_handler, "ws://127.0.0.1:1234",
                "myproto", NULL);
  FUNC7(&mgr, 4, c_int_eq, &connected, (void *) 2);
  FUNC0(connected, 2);

  FUNC4(&mgr);
  return NULL;
}