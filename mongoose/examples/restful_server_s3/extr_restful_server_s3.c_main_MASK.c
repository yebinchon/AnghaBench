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
struct TYPE_2__ {char* document_root; char* enable_directory_listing; } ;

/* Variables and functions */
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct mg_connection* FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* s_access_key_id ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 
 char* s_secret_access_key ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char) ; 

int FUNC10(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;
  char *cp;

  FUNC4(&mgr, NULL);
  nc = FUNC2(&mgr, s_http_port, ev_handler);
  FUNC6(nc);
  s_http_server_opts.document_root = ".";
  s_http_server_opts.enable_directory_listing = "yes";

  /* Use current binary directory as document root */
  if (argc > 0 && ((cp = FUNC9(argv[0], '/')) != NULL ||
                   (cp = FUNC9(argv[0], '/')) != NULL)) {
    *cp = '\0';
    s_http_server_opts.document_root = argv[0];
  }

  /* Process command line options to customize HTTP server */
  for (i = 1; i < argc; i++) {
    if (FUNC8(argv[i], "-D") == 0 && i + 1 < argc) {
      mgr.hexdump_file = argv[++i];
    } else if (FUNC8(argv[i], "-p") == 0 && i + 1 < argc) {
      s_http_port = argv[++i];
    } else if (FUNC8(argv[i], "-a") == 0 && i + 1 < argc) {
      s_access_key_id = argv[++i];
    } else if (FUNC8(argv[i], "-s") == 0 && i + 1 < argc) {
      s_secret_access_key = argv[++i];
    }
  }

  if (s_access_key_id == NULL || s_secret_access_key == NULL) {
    FUNC1(stderr,
            "Usage: %s -a access_key_id -s s_secret_access_key "
            "[-p port] [-D hexdump_file]\n",
            argv[0]);
    FUNC0(1);
  }

  FUNC7("Starting RESTful server on port %s\n", s_http_port);
  for (;;) {
    FUNC5(&mgr, 1000);
  }
  FUNC3(&mgr);

  return 0;
}