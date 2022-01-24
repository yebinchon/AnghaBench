#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  float_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MRB_FLT_DIG ; 
 int /*<<< orphan*/  MRB_FLT_EPSILON ; 
 int /*<<< orphan*/  MRB_FLT_MANT_DIG ; 
 int /*<<< orphan*/  MRB_FLT_MAX ; 
 int /*<<< orphan*/  MRB_FLT_MAX_10_EXP ; 
 int /*<<< orphan*/  MRB_FLT_MAX_EXP ; 
 int /*<<< orphan*/  MRB_FLT_MIN ; 
 int /*<<< orphan*/  MRB_FLT_MIN_10_EXP ; 
 int /*<<< orphan*/  MRB_FLT_MIN_EXP ; 
 int /*<<< orphan*/  MRB_FLT_RADIX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_int_allbits ; 
 int /*<<< orphan*/  mrb_int_anybits ; 
 int /*<<< orphan*/  mrb_int_nobits ; 
 struct RClass* FUNC5 (TYPE_1__*,char*) ; 

void
FUNC6(mrb_state* mrb)
{
  struct RClass *i = FUNC5(mrb, "Integral");

  FUNC2(mrb, i, "allbits?", mrb_int_allbits, FUNC0(1));
  FUNC2(mrb, i, "anybits?", mrb_int_anybits, FUNC0(1));
  FUNC2(mrb, i, "nobits?", mrb_int_nobits, FUNC0(1));

#ifndef MRB_WITHOUT_FLOAT
  FUNC1(mrb, mrb->float_class, "RADIX",        FUNC3(MRB_FLT_RADIX));
  FUNC1(mrb, mrb->float_class, "MANT_DIG",     FUNC3(MRB_FLT_MANT_DIG));
  FUNC1(mrb, mrb->float_class, "EPSILON",      FUNC4(mrb, MRB_FLT_EPSILON));
  FUNC1(mrb, mrb->float_class, "DIG",          FUNC3(MRB_FLT_DIG));
  FUNC1(mrb, mrb->float_class, "MIN_EXP",      FUNC3(MRB_FLT_MIN_EXP));
  FUNC1(mrb, mrb->float_class, "MIN",          FUNC4(mrb, MRB_FLT_MIN));
  FUNC1(mrb, mrb->float_class, "MIN_10_EXP",   FUNC3(MRB_FLT_MIN_10_EXP));
  FUNC1(mrb, mrb->float_class, "MAX_EXP",      FUNC3(MRB_FLT_MAX_EXP));
  FUNC1(mrb, mrb->float_class, "MAX",          FUNC4(mrb, MRB_FLT_MAX));
  FUNC1(mrb, mrb->float_class, "MAX_10_EXP",   FUNC3(MRB_FLT_MAX_10_EXP));
#endif /* MRB_WITHOUT_FLOAT */
}