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
struct mg_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  ev_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct mg_mgr*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_mgr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_mgr*,int) ; 
 char* s_address ; 
 char* s_password ; 
 char* s_topic ; 
 char* s_user_name ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(int argc, char **argv) {
  struct mg_mgr mgr;
  int i;

  FUNC3(&mgr, NULL);

  /* Parse command line arguments */
  for (i = 1; i < argc; i++) {
    if (FUNC5(argv[i], "-h") == 0) {
      s_address = argv[++i];
    } else if (FUNC5(argv[i], "-u") == 0) {
      s_user_name = argv[++i];
    } else if (FUNC5(argv[i], "-t") == 0) {
      s_topic = argv[++i];
    } else if (FUNC5(argv[i], "-p") == 0) {
      s_password = argv[++i];
    }
  }

  if (FUNC2(&mgr, s_address, ev_handler) == NULL) {
    FUNC1(stderr, "mg_connect(%s) failed\n", s_address);
    FUNC0(EXIT_FAILURE);
  }

  for (;;) {
    FUNC4(&mgr, 1000);
  }
}