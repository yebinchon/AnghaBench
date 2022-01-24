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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

mrb_value
FUNC9(mrb_state *mrb, mrb_value klass)
{
  mrb_value path = FUNC7();
  mrb_value mode = FUNC7();
  mrb_int fd, perm = -1;
  const char *pat;
  int flags, modenum;

  FUNC3(mrb, "S|Si", &path, &mode, &perm);
  if (FUNC6(mode)) {
    mode = FUNC8(mrb, "r");
  }
  if (perm < 0) {
    perm = 0666;
  }

  pat = FUNC0(mrb, path);
  flags = FUNC5(mrb, FUNC0(mrb, mode));
  modenum = FUNC4(mrb, flags);
  fd = FUNC1(mrb, pat, modenum, perm);
  return FUNC2(fd);
}