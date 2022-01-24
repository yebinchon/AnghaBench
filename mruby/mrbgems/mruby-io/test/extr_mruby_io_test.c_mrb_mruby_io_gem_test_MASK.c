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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mrb_io_test_file_cleanup ; 
 int /*<<< orphan*/  mrb_io_test_file_setup ; 
 int /*<<< orphan*/  mrb_io_test_io_cleanup ; 
 int /*<<< orphan*/  mrb_io_test_io_setup ; 
 int /*<<< orphan*/  mrb_io_test_mkdtemp ; 
 int /*<<< orphan*/  mrb_io_test_rmdir ; 
 int /*<<< orphan*/  mrb_io_win_p ; 

void
FUNC4(mrb_state* mrb)
{
  struct RClass *io_test = FUNC3(mrb, "MRubyIOTestUtil");
  FUNC2(mrb, io_test, "io_test_setup", mrb_io_test_io_setup, FUNC0());
  FUNC2(mrb, io_test, "io_test_cleanup", mrb_io_test_io_cleanup, FUNC0());

  FUNC2(mrb, io_test, "file_test_setup", mrb_io_test_file_setup, FUNC0());
  FUNC2(mrb, io_test, "file_test_cleanup", mrb_io_test_file_cleanup, FUNC0());

  FUNC2(mrb, io_test, "mkdtemp", mrb_io_test_mkdtemp, FUNC1(1));
  FUNC2(mrb, io_test, "rmdir", mrb_io_test_rmdir, FUNC1(1));
  FUNC2(mrb, io_test, "win?", mrb_io_win_p, FUNC0());
}