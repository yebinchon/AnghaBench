#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct RRange {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_8__ {int /*<<< orphan*/  range_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC1 (struct RRange*) ; 
 scalar_t__ FUNC2 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct RRange* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value range)
{
  mrb_value obj;
  struct RRange *r, *o;

  FUNC5(mrb, "o", &obj);

  if (FUNC6(mrb, range, obj)) return FUNC10();
  if (!FUNC7(mrb, obj, mrb->range_class)) return FUNC4();
  if (!FUNC8(obj)) return FUNC4();

  r = FUNC9(mrb, range);
  o = FUNC9(mrb, obj);
  if (!FUNC3(mrb, FUNC0(r), FUNC0(o)) ||
      !FUNC3(mrb, FUNC1(r), FUNC1(o)) ||
      (FUNC2(r) != FUNC2(o))) {
    return FUNC4();
  }
  return FUNC10();
}