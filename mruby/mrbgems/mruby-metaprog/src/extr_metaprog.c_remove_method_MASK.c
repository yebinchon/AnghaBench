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
struct RClass {int mt; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RClass*) ; 
 int h ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct RClass* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt ; 

__attribute__((used)) static void
FUNC9(mrb_state *mrb, mrb_value mod, mrb_sym mid)
{
  struct RClass *c = FUNC5(mod);
  FUNC4(mt) *h;
  khiter_t k;

  FUNC0(c);
  h = c->mt;

  if (h) {
    k = FUNC3(mt, mrb, h, mid);
    if (k != FUNC2(h)) {
      FUNC1(mt, mrb, h, k);
      FUNC6(mrb, mod, "method_removed", 1, FUNC8(mid));
      return;
    }
  }

  FUNC7(mrb, mid, "method '%n' not defined in %v", mid, mod);
}