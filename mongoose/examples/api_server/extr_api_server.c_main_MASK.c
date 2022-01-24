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
struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;
struct TYPE_2__ {char* document_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 struct mg_connection* FUNC4 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * s_db_handle ; 
 char* s_db_path ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 
 scalar_t__ s_sig_num ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char*,char*) ; 

int FUNC12(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;

  /* Open listening socket */
  FUNC6(&mgr, NULL);
  nc = FUNC4(&mgr, s_http_port, ev_handler);
  FUNC8(nc);
  s_http_server_opts.document_root = "web_root";

  /* Parse command line arguments */
  for (i = 1; i < argc; i++) {
    if (FUNC11(argv[i], "-D") == 0) {
      mgr.hexdump_file = argv[++i];
    } else if (FUNC11(argv[i], "-f") == 0) {
      s_db_path = argv[++i];
    } else if (FUNC11(argv[i], "-r") == 0) {
      s_http_server_opts.document_root = argv[++i];
    }
  }

  FUNC10(SIGINT, signal_handler);
  FUNC10(SIGTERM, signal_handler);

  /* Open database */
  if ((s_db_handle = FUNC1(s_db_path)) == NULL) {
    FUNC3(stderr, "Cannot open DB [%s]\n", s_db_path);
    FUNC2(EXIT_FAILURE);
  }

  /* Run event loop until signal is received */
  FUNC9("Starting RESTful server on port %s\n", s_http_port);
  while (s_sig_num == 0) {
    FUNC7(&mgr, 1000);
  }

  /* Cleanup */
  FUNC5(&mgr);
  FUNC0(&s_db_handle);

  FUNC9("Exiting on signal %d\n", s_sig_num);

  return 0;
}