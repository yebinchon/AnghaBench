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
struct mg_connection {int recv_mbuf_limit; void* handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  c_int_eq ; 
 int /*<<< orphan*/  ehb_srv ; 
 void* ehb_srv2 ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,int,int /*<<< orphan*/ ,int*,void*) ; 

__attribute__((used)) static const char *FUNC9(void) {
  struct mg_mgr mgr;
  struct mg_connection *clnt, *srv;
  const char *address = "tcp://127.0.0.1:7878";
  int res = 0;

  FUNC5(&mgr, &res);
  FUNC0((srv = FUNC2(&mgr, address, ehb_srv)) != NULL);
  srv->recv_mbuf_limit = 1;
  FUNC0((clnt = FUNC3(&mgr, address, NULL)) != NULL);
  FUNC6(clnt, "abcd");

  FUNC8(&mgr, 1, c_int_eq, &res, (void *) 4);

  /* expect four single byte read events */
  FUNC1(res, 4);

  /*
   * Make sure we're not closing full non-drained connections without any
   * protocol handler
   */
  res = 0;
  srv->handler = ehb_srv2;
  FUNC0((clnt = FUNC3(&mgr, address, NULL)) != NULL);
  FUNC6(clnt, "abcd");
  FUNC8(&mgr, 1, c_int_eq, &res, (void *) 1);
  FUNC1(res, 0);

  /*
   * Make sure we're closing full non-drained connections with mqtt protocol
   * handler
   */
  res = 0;
  srv->handler = ehb_srv2;
  FUNC7(srv);
  FUNC0((clnt = FUNC3(&mgr, address, NULL)) != NULL);
  FUNC6(clnt, "abcd");
  FUNC8(&mgr, 1, c_int_eq, &res, (void *) 1);
  FUNC1(res, 1);

  FUNC4(&mgr);
  return NULL;
}