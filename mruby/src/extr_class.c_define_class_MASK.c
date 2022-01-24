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
struct RClass {int /*<<< orphan*/  super; } ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct RClass*) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,struct RClass*) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RClass*,struct RClass*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct RClass*
FUNC8(mrb_state *mrb, mrb_sym name, struct RClass *super, struct RClass *outer)
{
  struct RClass * c;

  if (FUNC4(mrb, FUNC5(outer), name)) {
    c = FUNC1(mrb, outer, name);
    FUNC0(c);
    if (super && FUNC3(c->super) != super) {
      FUNC6(mrb, E_TYPE_ERROR, "superclass mismatch for Class %n (%C not %C)",
                 name, c->super, super);
    }
    return c;
  }

  c = FUNC2(mrb, super);
  FUNC7(mrb, outer, c, name);

  return c;
}