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
struct RBasic {int dummy; } ;
struct RArray {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct RArray*) ; 
 scalar_t__ FUNC1 (struct RArray*) ; 
 scalar_t__ ARY_MAX_SIZE ; 
 scalar_t__ FUNC2 (struct RArray*) ; 
 int /*<<< orphan*/  FUNC3 (struct RArray*,scalar_t__) ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct RArray*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RArray*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RArray*,struct RArray*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RBasic*) ; 

__attribute__((used)) static void
FUNC10(mrb_state *mrb, struct RArray *a, struct RArray *a2)
{
  mrb_int len;

  if (FUNC1(a) == 0) {
    FUNC7(mrb, a, a2);
    return;
  }
  if (FUNC1(a2) > ARY_MAX_SIZE - FUNC1(a)) {
    FUNC8(mrb, E_ARGUMENT_ERROR, "array size too big");
  }
  len = FUNC1(a) + FUNC1(a2);

  FUNC6(mrb, a);
  if (FUNC0(a) < len) {
    FUNC5(mrb, a, len);
  }
  FUNC4(FUNC2(a)+FUNC1(a), FUNC2(a2), FUNC1(a2));
  FUNC9(mrb, (struct RBasic*)a);
  FUNC3(a, len);
}