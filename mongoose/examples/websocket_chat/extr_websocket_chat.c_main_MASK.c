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
struct TYPE_2__ {char* document_root; char* enable_directory_listing; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  ev_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 
 scalar_t__ s_signal_received ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC8(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  FUNC7(SIGTERM, signal_handler);
  FUNC7(SIGINT, signal_handler);
  FUNC6(stdout, NULL, _IOLBF, 0);
  FUNC6(stderr, NULL, _IOLBF, 0);

  FUNC2(&mgr, NULL);

  nc = FUNC0(&mgr, s_http_port, ev_handler);
  FUNC4(nc);
  s_http_server_opts.document_root = ".";  // Serve current directory
  s_http_server_opts.enable_directory_listing = "yes";

  FUNC5("Started on port %s\n", s_http_port);
  while (s_signal_received == 0) {
    FUNC3(&mgr, 200);
  }
  FUNC1(&mgr);

  return 0;
}