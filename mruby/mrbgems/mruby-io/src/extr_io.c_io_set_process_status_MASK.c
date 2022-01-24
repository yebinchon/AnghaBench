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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,struct RClass*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct RClass* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct RClass*) ; 

__attribute__((used)) static void
FUNC10(mrb_state *mrb, pid_t pid, int status)
{
  struct RClass *c_process, *c_status;
  mrb_value v;

  c_status = NULL;
  if (FUNC1(mrb, "Process")) {
    c_process = FUNC8(mrb, "Process");
    if (FUNC3(mrb, FUNC9(c_process), FUNC7(mrb, "Status"))) {
      c_status = FUNC2(mrb, c_process, "Status");
    }
  }
  if (c_status != NULL) {
    v = FUNC5(mrb, FUNC9(c_status), "new", 2, FUNC4(pid), FUNC4(status));
  } else {
    v = FUNC4(FUNC0(status));
  }
  FUNC6(mrb, FUNC7(mrb, "$?"), v);
}