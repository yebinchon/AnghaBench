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
typedef  int mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC1 (struct RRange*) ; 
 scalar_t__ FUNC2 (struct RRange*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 struct RRange* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value range)
{
  mrb_value val;
  struct RRange *r = FUNC5(mrb, range);
  mrb_value beg, end;
  mrb_bool include_p;

  FUNC4(mrb, "o", &val);

  beg = FUNC0(r);
  end = FUNC1(r);
  include_p = FUNC8(mrb, beg, val) &&                 /* beg <= val */
              (FUNC2(r) ? FUNC7(mrb, end, val)   /* end >  val */
                             : FUNC6(mrb, end, val)); /* end >= val */

  return FUNC3(include_p);
}