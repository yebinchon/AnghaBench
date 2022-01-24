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

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state *mrb, mrb_value self)
{
  mrb_value ary = FUNC0(mrb, self);
#if !defined(_WIN32) && !defined(_WIN64)
  if (FUNC2("/usr/bin", "test-bin") == -1) {
    FUNC1(mrb, E_RUNTIME_ERROR, "can't make a symbolic link");
  }
#endif

  return ary;
}