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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_mgr*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_mgr*,int) ; 
 scalar_t__ s_exit_flag ; 
 int s_show_headers ; 
 char* s_show_headers_opt ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 

int FUNC7(int argc, char *argv[]) {
  struct mg_mgr mgr;
  int i;

  FUNC4(&mgr, NULL);

  /* Process command line arguments */
  for (i = 1; i < argc; i++) {
    if (FUNC6(argv[i], s_show_headers_opt) == 0) {
      s_show_headers = 1;
    } else if (FUNC6(argv[i], "--hexdump") == 0 && i + 1 < argc) {
      mgr.hexdump_file = argv[++i];
    } else {
      break;
    }
  }

  if (i + 1 != argc) {
    FUNC1(stderr, "Usage: %s [%s] [--hexdump <file>] <URL>\n", argv[0],
            s_show_headers_opt);
    FUNC0(EXIT_FAILURE);
  }

  FUNC2(&mgr, ev_handler, argv[i], NULL, NULL);

  while (s_exit_flag == 0) {
    FUNC5(&mgr, 1000);
  }
  FUNC3(&mgr);

  return 0;
}