#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mg_mgr {int dummy; } ;
struct mg_connection {int dummy; } ;
struct TYPE_2__ {char* document_root; } ;

/* Variables and functions */
 scalar_t__ SESSION_CHECK_INTERVAL ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  login_handler ; 
 int /*<<< orphan*/  logout_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*,scalar_t__) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

int FUNC10(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  FUNC9(FUNC7());

  FUNC2(&mgr, NULL);
  nc = FUNC0(&mgr, s_http_port, ev_handler);

  FUNC5(nc);
  s_http_server_opts.document_root = ".";
  FUNC4(nc, "/login.html", login_handler);
  FUNC4(nc, "/logout", logout_handler);
  FUNC6(nc, FUNC7() + SESSION_CHECK_INTERVAL);

  FUNC8("Starting web server on port %s\n", s_http_port);
  for (;;) {
    FUNC3(&mgr, 1000);
  }
  FUNC1(&mgr);

  return 0;
}