#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct udp_res {TYPE_1__ buf_clnt; TYPE_1__ buf_srv; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  c_int_eq ; 
 int /*<<< orphan*/  eh3_clnt ; 
 int /*<<< orphan*/  eh3_srv ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct udp_res*,int /*<<< orphan*/ ,int) ; 
 struct mg_connection* FUNC5 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 struct mg_connection* FUNC6 (struct mg_mgr*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_mgr*,struct udp_res*) ; 
 int /*<<< orphan*/  FUNC9 (struct mg_mgr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static const char *FUNC10(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc1, *nc2;
  const char *address = "udp://127.0.0.1:7878";
  struct udp_res res;
  FUNC4(&res, 0, sizeof(res));
  FUNC3(&res.buf_srv, 100);
  FUNC3(&res.buf_clnt, 100);

  FUNC8(&mgr, &res);
  FUNC0((nc1 = FUNC5(&mgr, address, eh3_srv)) != NULL);
  FUNC0((nc2 = FUNC6(&mgr, address, eh3_clnt)) != NULL);

  FUNC9(&mgr, 1, c_int_eq, &res.buf_clnt.len, (void *) 23);
  FUNC1(res.buf_srv.buf, "ACCEPT+ RECV boo! CLOSE");
  FUNC1(res.buf_clnt.buf, "CONNECT RECV boo! CLOSE");

  FUNC2(&res.buf_srv);
  FUNC2(&res.buf_clnt);
  FUNC7(&mgr);

  return NULL;
}