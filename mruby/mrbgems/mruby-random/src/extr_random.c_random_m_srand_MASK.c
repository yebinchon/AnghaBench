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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  rand_state ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value self)
{
  uint32_t seed;
  uint32_t old_seed;
  mrb_value sv;
  rand_state *t = FUNC6(self);

  sv = FUNC0(mrb);
  if (FUNC3(sv)) {
    seed = (uint32_t)FUNC7(NULL) + FUNC5(t);
  }
  else {
    seed = (uint32_t)FUNC1(sv);
  }
  old_seed = FUNC4(t, seed);

  return FUNC2((mrb_int)old_seed);
}