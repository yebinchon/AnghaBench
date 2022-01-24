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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,struct RClass*) ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_int argc, mrb_value *argv, mrb_value self)
{
  struct RClass *klass = FUNC2(mrb, self);
  mrb_int i, n;

  n = FUNC4(mrb, klass);
  if (n < argc) {
    FUNC3(mrb, E_ARGUMENT_ERROR, "struct size differs");
  }

  for (i = 0; i < argc; i++) {
    FUNC0(mrb, self, i, argv[i]);
  }
  for (i = argc; i < n; i++) {
    FUNC0(mrb, self, i, FUNC1());
  }
  return self;
}