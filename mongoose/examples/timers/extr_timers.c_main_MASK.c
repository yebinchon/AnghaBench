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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  ev_handler ; 
 struct mg_connection* FUNC0 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,scalar_t__) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 char* s_http_port ; 
 TYPE_1__ s_http_server_opts ; 

int FUNC8(void) {
  struct mg_mgr mgr;
  struct mg_connection *c;

  FUNC2(&mgr, NULL);
  c = FUNC0(&mgr, s_http_port, ev_handler);
  if (c == NULL) {
    FUNC7("Cannot start on port %s\n", s_http_port);
    return EXIT_FAILURE;
  }

  // Set up HTTP server parameters
  FUNC4(c);
  s_http_server_opts.document_root = ".";  // Serve current directory

  // Send us MG_EV_TIMER event after 2.5 seconds
  FUNC5(c, FUNC6() + 2.5);

  FUNC7("Starting on port %s, time: %.2lf\n", s_http_port, FUNC6());
  for (;;) {
    FUNC3(&mgr, 1000);
  }
  FUNC1(&mgr);

  return EXIT_SUCCESS;
}