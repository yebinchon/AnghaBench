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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RClass*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct RClass* FUNC4 (int /*<<< orphan*/ ) ; 
 struct RClass* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct RClass*
FUNC10(mrb_state *mrb, mrb_value outer, mrb_value super, mrb_sym id)
{
  struct RClass *s;
  struct RClass *c;

  if (!FUNC8(super)) {
    if (!FUNC3(super)) {
      FUNC9(mrb, E_TYPE_ERROR, "superclass must be a Class (%!v given)", super);
    }
    s = FUNC4(super);
  }
  else {
    s = 0;
  }
  FUNC0(mrb, outer);
  if (FUNC6(mrb, outer, id)) {
    mrb_value old = FUNC7(mrb, outer, id);

    if (!FUNC3(old)) {
      FUNC9(mrb, E_TYPE_ERROR, "%!v is not a class", old);
    }
    c = FUNC4(old);
    if (s) {
      /* check super class */
      if (FUNC5(c->super) != s) {
        FUNC9(mrb, E_TYPE_ERROR, "superclass mismatch for class %v", old);
      }
    }
    return c;
  }
  c = FUNC1(mrb, id, s, FUNC4(outer));
  FUNC2(mrb, FUNC5(c->super), c);

  return c;
}