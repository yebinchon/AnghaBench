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
typedef  scalar_t__ mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
typedef  scalar_t__ mrb_float ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ MRB_INT_MAX ; 
 scalar_t__ MRB_INT_MIN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
  mrb_int numerator, denominator;

#ifdef MRB_WITHOUT_FLOAT
  mrb_get_args(mrb, "ii", &numerator, &denominator);
#else

#define DROP_PRECISION(cond, num, denom) \
  do { \
      while (cond) { \
        num /= 2; \
        denom /= 2; \
      } \
  } while (0)

  mrb_value numv, denomv;

  FUNC3(mrb, "oo", &numv, &denomv);
  if (FUNC2(numv)) {
    numerator = FUNC1(numv);

    if (FUNC2(denomv)) {
      denominator = FUNC1(denomv);
    }
    else {
      mrb_float denomf = FUNC4(mrb, denomv);

      DROP_PRECISION(denomf < MRB_INT_MIN || denomf > MRB_INT_MAX, numerator, denomf);
      denominator = denomf;
    }
  }
  else {
    mrb_float numf = FUNC4(mrb, numv);

    if (FUNC2(denomv)) {
      denominator = FUNC1(denomv);
    }
    else {
      mrb_float denomf = FUNC4(mrb, denomv);

      DROP_PRECISION(denomf < MRB_INT_MIN || denomf > MRB_INT_MAX, numf, denomf);
      denominator = denomf;
    }

    DROP_PRECISION(numf < MRB_INT_MIN || numf > MRB_INT_MAX, numf, denominator);
    numerator = numf;
  }
#endif

  return FUNC5(mrb, numerator, denominator);
}