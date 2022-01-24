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
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 
 int s_num_worker_threads ; 
 scalar_t__ s_received_signal ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/ * sock ; 
 int /*<<< orphan*/  worker_thread_proc ; 

int FUNC12(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;

  if (FUNC7(sock, SOCK_STREAM) == 0) {
    FUNC9("Opening socket pair");
    FUNC1(1);
  }

  FUNC11(SIGTERM, signal_handler);
  FUNC11(SIGINT, signal_handler);

  FUNC4(&mgr, NULL);

  nc = FUNC2(&mgr, s_http_port, ev_handler);
  if (nc == NULL) {
    FUNC10("Failed to create listener\n");
    return 1;
  }

  FUNC6(nc);
  s_http_server_opts.document_root = ".";  // Serve current directory
  s_http_server_opts.enable_directory_listing = "no";

  for (i = 0; i < s_num_worker_threads; i++) {
    FUNC8(worker_thread_proc, &mgr);
  }

  FUNC10("Started on port %s\n", s_http_port);
  while (s_received_signal == 0) {
    FUNC5(&mgr, 200);
  }

  FUNC3(&mgr);

  FUNC0(sock[0]);
  FUNC0(sock[1]);

  return 0;
}