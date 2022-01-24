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
struct strip_args {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrb_default_allocf ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char**,struct strip_args*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (int /*<<< orphan*/ *,struct strip_args*) ; 

int
FUNC7(int argc, char **argv)
{
  struct strip_args args;
  int args_result;
  mrb_state *mrb;
  int ret;

  if (argc <= 1) {
    FUNC5("no files to strip\n");
    FUNC4(argv[0]);
    return EXIT_FAILURE;
  }

  args_result = FUNC3(argc, argv, &args);
  if (args_result < 0) {
    FUNC4(argv[0]);
    return EXIT_FAILURE;
  }
  mrb = FUNC2(mrb_default_allocf, NULL);
  if (mrb == NULL) {
    FUNC0("Invalid mrb_state, exiting mruby-strip\n", stderr);
    return EXIT_FAILURE;
  }

  ret = FUNC6(mrb, &args);

  FUNC1(mrb);
  return ret;
}