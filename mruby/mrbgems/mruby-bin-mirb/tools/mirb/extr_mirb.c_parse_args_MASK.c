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
struct _args {char** libv; char** argv; int argc; int /*<<< orphan*/ * rfp; void* verbose; int /*<<< orphan*/  libc; void* debug; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 void* TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10(mrb_state *mrb, int argc, char **argv, struct _args *args)
{
  char **origargv = argv;
  static const struct _args args_zero = { 0 };

  *args = args_zero;

  for (argc--,argv++; argc > 0; argc--,argv++) {
    char *item;
    if (argv[0][0] != '-') break;

    item = argv[0] + 1;
    switch (*item++) {
    case 'd':
      args->debug = TRUE;
      break;
    case 'r':
      if (!item[0]) {
        if (argc <= 1) {
          FUNC8("%s: No library specified for -r\n", *origargv);
          return EXIT_FAILURE;
        }
        argc--; argv++;
        item = argv[0];
      }
      if (args->libc == 0) {
        args->libv = (char**)FUNC4(mrb, sizeof(char*));
      }
      else {
        args->libv = (char**)FUNC5(mrb, args->libv, sizeof(char*) * (args->libc + 1));
      }
      args->libv[args->libc++] = FUNC0(mrb, item);
      break;
    case 'v':
      if (!args->verbose) FUNC7(mrb);
      args->verbose = TRUE;
      break;
    case '-':
      if (FUNC9((*argv) + 2, "version") == 0) {
        FUNC7(mrb);
        FUNC1(EXIT_SUCCESS);
      }
      else if (FUNC9((*argv) + 2, "verbose") == 0) {
        args->verbose = TRUE;
        break;
      }
      else if (FUNC9((*argv) + 2, "copyright") == 0) {
        FUNC6(mrb);
        FUNC1(EXIT_SUCCESS);
      }
    default:
      return EXIT_FAILURE;
    }
  }

  if (args->rfp == NULL) {
    if (*argv != NULL) {
      args->rfp = FUNC2(argv[0], "r");
      if (args->rfp == NULL) {
        FUNC8("Cannot open program file. (%s)\n", *argv);
        return EXIT_FAILURE;
      }
      argc--; argv++;
    }
  }
  args->argv = (char **)FUNC5(mrb, args->argv, sizeof(char*) * (argc + 1));
  FUNC3(args->argv, argv, (argc+1) * sizeof(char*));
  args->argc = argc;

  return EXIT_SUCCESS;
}