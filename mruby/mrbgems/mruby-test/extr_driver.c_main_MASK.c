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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrbtest_assert_irep ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC9(int argc, char **argv)
{
  mrb_state *mrb;
  int ret;
  mrb_bool verbose = FALSE;

  FUNC7();

  /* new interpreter instance */
  mrb = FUNC5();
  if (mrb == NULL) {
    FUNC1(stderr, "Invalid mrb_state, exiting test driver");
    return EXIT_FAILURE;
  }

  if (argc == 2 && argv[1][0] == '-' && argv[1][1] == 'v') {
    FUNC8("verbose mode: enable\n\n");
    verbose = TRUE;
  }

  FUNC3(mrb, verbose);
  FUNC4(mrb, mrbtest_assert_irep);
  FUNC6(mrb);
  ret = FUNC0(mrb);
  FUNC2(mrb);

  return ret;
}