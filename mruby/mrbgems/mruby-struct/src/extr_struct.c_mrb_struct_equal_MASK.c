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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value s)
{
  mrb_value s2;
  mrb_value *ptr, *ptr2;
  mrb_int i, len;

  FUNC5(mrb, "o", &s2);
  if (FUNC7(mrb, s, s2)) {
    return FUNC8();
  }
  if (FUNC6(mrb, s) != FUNC6(mrb, s2)) {
    return FUNC4();
  }
  if (FUNC0(s) != FUNC0(s2)) {
    FUNC2(mrb, "inconsistent struct"); /* should never happen */
  }
  ptr = FUNC1(s);
  ptr2 = FUNC1(s2);
  len = FUNC0(s);
  for (i=0; i<len; i++) {
    if (!FUNC3(mrb, ptr[i], ptr2[i])) {
      return FUNC4();
    }
  }

  return FUNC8();
}