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
struct RClass {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  eStandardError_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 double M_E ; 
 double M_PI ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  math_acos ; 
 int /*<<< orphan*/  math_acosh ; 
 int /*<<< orphan*/  math_asin ; 
 int /*<<< orphan*/  math_asinh ; 
 int /*<<< orphan*/  math_atan ; 
 int /*<<< orphan*/  math_atan2 ; 
 int /*<<< orphan*/  math_atanh ; 
 int /*<<< orphan*/  math_cbrt ; 
 int /*<<< orphan*/  math_cos ; 
 int /*<<< orphan*/  math_cosh ; 
 int /*<<< orphan*/  math_erf ; 
 int /*<<< orphan*/  math_erfc ; 
 int /*<<< orphan*/  math_exp ; 
 int /*<<< orphan*/  math_frexp ; 
 int /*<<< orphan*/  math_hypot ; 
 int /*<<< orphan*/  math_ldexp ; 
 int /*<<< orphan*/  math_log ; 
 int /*<<< orphan*/  math_log10 ; 
 int /*<<< orphan*/  math_log2 ; 
 int /*<<< orphan*/  math_sin ; 
 int /*<<< orphan*/  math_sinh ; 
 int /*<<< orphan*/  math_sqrt ; 
 int /*<<< orphan*/  math_tan ; 
 int /*<<< orphan*/  math_tanh ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,double) ; 

void
FUNC9(mrb_state* mrb)
{
  struct RClass *mrb_math;
  mrb_math = FUNC6(mrb, "Math");

  FUNC4(mrb, mrb_math, "DomainError", mrb->eStandardError_class);

#ifdef M_PI
  mrb_define_const(mrb, mrb_math, "PI", mrb_float_value(mrb, M_PI));
#else
  FUNC5(mrb, mrb_math, "PI", FUNC8(mrb, FUNC2(1.0)*4.0));
#endif

#ifdef M_E
  mrb_define_const(mrb, mrb_math, "E", mrb_float_value(mrb, M_E));
#else
  FUNC5(mrb, mrb_math, "E", FUNC8(mrb, FUNC3(1.0)));
#endif

  FUNC7(mrb, mrb_math, "sin", math_sin, FUNC1(1));
  FUNC7(mrb, mrb_math, "cos", math_cos, FUNC1(1));
  FUNC7(mrb, mrb_math, "tan", math_tan, FUNC1(1));

  FUNC7(mrb, mrb_math, "asin", math_asin, FUNC1(1));
  FUNC7(mrb, mrb_math, "acos", math_acos, FUNC1(1));
  FUNC7(mrb, mrb_math, "atan", math_atan, FUNC1(1));
  FUNC7(mrb, mrb_math, "atan2", math_atan2, FUNC1(2));

  FUNC7(mrb, mrb_math, "sinh", math_sinh, FUNC1(1));
  FUNC7(mrb, mrb_math, "cosh", math_cosh, FUNC1(1));
  FUNC7(mrb, mrb_math, "tanh", math_tanh, FUNC1(1));

  FUNC7(mrb, mrb_math, "asinh", math_asinh, FUNC1(1));
  FUNC7(mrb, mrb_math, "acosh", math_acosh, FUNC1(1));
  FUNC7(mrb, mrb_math, "atanh", math_atanh, FUNC1(1));

  FUNC7(mrb, mrb_math, "exp", math_exp, FUNC1(1));
  FUNC7(mrb, mrb_math, "log", math_log, FUNC1(1)|FUNC0(1));
  FUNC7(mrb, mrb_math, "log2", math_log2, FUNC1(1));
  FUNC7(mrb, mrb_math, "log10", math_log10, FUNC1(1));
  FUNC7(mrb, mrb_math, "sqrt", math_sqrt, FUNC1(1));
  FUNC7(mrb, mrb_math, "cbrt", math_cbrt, FUNC1(1));

  FUNC7(mrb, mrb_math, "frexp", math_frexp, FUNC1(1));
  FUNC7(mrb, mrb_math, "ldexp", math_ldexp, FUNC1(2));

  FUNC7(mrb, mrb_math, "hypot", math_hypot, FUNC1(2));

  FUNC7(mrb, mrb_math, "erf",  math_erf,  FUNC1(1));
  FUNC7(mrb, mrb_math, "erfc", math_erfc, FUNC1(1));
}