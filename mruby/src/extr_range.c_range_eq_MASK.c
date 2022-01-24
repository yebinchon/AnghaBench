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
struct RRange {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC1 (struct RRange*) ; 
 scalar_t__ FUNC2 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RRange* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value range)
{
  struct RRange *rr;
  struct RRange *ro;
  mrb_value obj;
  mrb_bool v1, v2;

  FUNC5(mrb, "o", &obj);

  if (FUNC7(mrb, range, obj)) return FUNC10();
  if (!FUNC8(mrb, obj, FUNC6(mrb, range))) { /* same class? */
    return FUNC4();
  }

  rr = FUNC9(mrb, range);
  ro = FUNC9(mrb, obj);
  v1 = FUNC3(mrb, FUNC0(rr), FUNC0(ro));
  v2 = FUNC3(mrb, FUNC1(rr), FUNC1(ro));
  if (!v1 || !v2 || FUNC2(rr) != FUNC2(ro)) {
    return FUNC4();
  }
  return FUNC10();
}