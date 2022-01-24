#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct options {int dummy; } ;
struct fuse_args {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
struct TYPE_4__ {char* mdd; } ;

/* Variables and functions */
 struct fuse_args FUNC0 (int,char**) ; 
 int R_OK ; 
 int W_OK ; 
 int X_OK ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_args*) ; 
 int FUNC5 (struct fuse_args*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  pifs_ops ; 
 int /*<<< orphan*/  pifs_opts ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8 (int argc, char *argv[])
{
  int ret;
  struct fuse_args args = FUNC0(argc, argv);

  FUNC6(&options, 0, sizeof(struct options));
  if (FUNC5(&args, &options, pifs_opts, NULL) == -1) {
    return -1;
  }

  if (!options.mdd) {
    FUNC2(stderr,
            "%s: Metadata directory must be specified with -o mdd=<directory>\n",
            argv[0]);
    return -1;
  }

  if (FUNC1(options.mdd, R_OK | W_OK | X_OK) == -1) {
    FUNC2(stderr, "%s: Cannot access metadata directory '%s': %s\n",
            argv[0], options.mdd, FUNC7(errno));
    return -1;
  }

  ret = FUNC3(args.argc, args.argv, &pifs_ops, NULL);
  FUNC4(&args);
  return ret;
}