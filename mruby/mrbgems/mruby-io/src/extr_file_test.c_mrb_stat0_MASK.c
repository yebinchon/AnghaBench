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
struct stat {int dummy; } ;
struct mrb_io {scalar_t__ fd; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_IO_ERROR ; 
 int FUNC0 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrb_io_type ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC10(mrb_state *mrb, mrb_value obj, struct stat *st, int do_lstat)
{
  if (FUNC7(mrb, obj, FUNC3(mrb, "IO"))) {
    struct mrb_io *fptr;
    fptr = (struct mrb_io *)FUNC4(mrb, obj, &mrb_io_type);

    if (fptr && fptr->fd >= 0) {
      return FUNC2(fptr->fd, st);
    }

    FUNC8(mrb, E_IO_ERROR, "closed stream");
    return -1;
  }
  else {
    char *path = FUNC6(FUNC1(mrb, obj), -1);
    int ret;
    if (do_lstat) {
      ret = FUNC0(path, st);
    } else {
      ret = FUNC9(path, st);
    }
    FUNC5(path);
    return ret;
  }
}