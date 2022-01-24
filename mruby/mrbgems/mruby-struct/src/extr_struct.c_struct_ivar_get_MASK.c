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
struct RClass {struct RClass* super; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 struct RClass* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct RClass*) ; 
 struct RClass* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline mrb_value
FUNC6(mrb_state *mrb, mrb_value cls, mrb_sym id)
{
  struct RClass* c = FUNC0(cls);
  struct RClass* sclass = FUNC5(mrb);
  mrb_value ans;

  for (;;) {
    ans = FUNC1(mrb, FUNC4(c), id);
    if (!FUNC2(ans)) return ans;
    c = c->super;
    if (c == sclass || c == 0)
      return FUNC3();
  }
}