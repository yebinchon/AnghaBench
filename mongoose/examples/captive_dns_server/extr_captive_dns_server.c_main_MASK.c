#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mg_mgr {char* hexdump_file; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct mg_connection* FUNC3 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_mgr*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 scalar_t__ s_exit_flag ; 
 char* s_listening_addr ; 
 int /*<<< orphan*/  s_our_ip_addr ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char*,char*) ; 

int FUNC9(int argc, char *argv[]) {
  struct mg_mgr mgr;
  struct mg_connection *nc;
  int i;

  FUNC5(&mgr, NULL);
  s_our_ip_addr = FUNC2("127.0.0.1");

  /* Parse command line arguments */
  for (i = 1; i < argc; i++) {
    if (FUNC8(argv[i], "-D") == 0) {
      mgr.hexdump_file = argv[++i];
    } else if (FUNC8(argv[i], "-l") == 0 && i + 1 < argc) {
      s_listening_addr = argv[++i];
    } else {
      s_our_ip_addr = FUNC2(argv[i]);
    }
  }

  FUNC1(stderr, "Listening on '%s'\n", s_listening_addr);
  if ((nc = FUNC3(&mgr, s_listening_addr, ev_handler)) == NULL) {
    FUNC1(stderr, "cannot bind to socket\n");
    FUNC0(1);
  }
  FUNC7(nc);

  while (s_exit_flag == 0) {
    FUNC6(&mgr, 1000);
  }
  FUNC4(&mgr);

  return 0;
}