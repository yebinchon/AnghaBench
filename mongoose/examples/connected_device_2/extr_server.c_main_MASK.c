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
typedef  int /*<<< orphan*/  cs_stat_t ;
struct TYPE_2__ {char* document_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  cs_stat_t st;

  FUNC4(&mgr, NULL);
  nc = FUNC2(&mgr, s_http_port, ev_handler);
  if (nc == NULL) {
    FUNC1(stderr, "Cannot bind to %s\n", s_http_port);
    FUNC0(1);
  }

  // Set up HTTP server parameters
  FUNC6(nc);
  s_http_server_opts.document_root = "web_root";  // Set up web root directory

  if (FUNC7(s_http_server_opts.document_root, &st) != 0) {
    FUNC1(stderr, "%s", "Cannot find web_root directory, exiting\n");
    FUNC0(1);
  }

  FUNC8("Starting web server on port %s\n", s_http_port);
  for (;;) {
    FUNC5(&mgr, 1000);
  }
  FUNC3(&mgr);

  return 0;
}