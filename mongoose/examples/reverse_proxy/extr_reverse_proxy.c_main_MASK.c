#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;
struct TYPE_4__ {char* document_root; } ;
struct TYPE_3__ {char* document_root; char* url_rewrites; } ;

/* Variables and functions */
 int /*<<< orphan*/  backend_handler ; 
 int /*<<< orphan*/  frontend_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* s_backend_port ; 
 TYPE_2__ s_backend_server_opts ; 
 char* s_frontend_port ; 
 TYPE_1__ s_frontend_server_opts ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;

  /* Open listening socket */
  FUNC1(&mgr, NULL);

  /* configure frontend web server */
  nc = FUNC0(&mgr, s_frontend_port, frontend_handler);
  FUNC3(nc);

  s_frontend_server_opts.document_root = "frontend";
  s_frontend_server_opts.url_rewrites =
      "/api=http://localhost:8001,/=frontend/hello.html";

  /* configure backend web server */
  nc = FUNC0(&mgr, s_backend_port, backend_handler);
  FUNC3(nc);

  s_backend_server_opts.document_root = "backend";

  /* Parse command line arguments */
  for (i = 1; i < argc; i++) {
    if (FUNC5(argv[i], "-D") == 0) {
      mgr.hexdump_file = argv[++i];
    } else if (FUNC5(argv[i], "-r") == 0) {
      s_frontend_server_opts.document_root = argv[++i];
    }
  }

  FUNC4("Starting web server on port %s\n", s_frontend_port);
  for (;;) {
    FUNC2(&mgr, 1000);
  }
}