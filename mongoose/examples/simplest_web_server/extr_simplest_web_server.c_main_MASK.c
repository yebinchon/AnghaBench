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
 int /*<<< orphan*/  ev_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 

int FUNC6(void) {
  struct mg_mgr mgr;
  struct mg_connection *nc;

  FUNC2(&mgr, NULL);
  FUNC5("Starting web server on port %s\n", s_http_port);
  nc = FUNC0(&mgr, s_http_port, ev_handler);
  if (nc == NULL) {
    FUNC5("Failed to create listener\n");
    return 1;
  }

  // Set up HTTP server parameters
  FUNC4(nc);
  s_http_server_opts.document_root = ".";  // Serve current directory
  s_http_server_opts.enable_directory_listing = "yes";

  for (;;) {
    FUNC3(&mgr, 1000);
  }
  FUNC1(&mgr);

  return 0;
}