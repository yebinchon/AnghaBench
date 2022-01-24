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
struct mrb_rational {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_8__ {struct RClass* fixnum_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int ISTRUCT_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  MRB_TT_ISTRUCT ; 
 int /*<<< orphan*/  fix_to_r ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct RClass* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct RClass*,char*) ; 
 int /*<<< orphan*/  rational_denominator ; 
 int /*<<< orphan*/  rational_negative_p ; 
 int /*<<< orphan*/  rational_numerator ; 
 int /*<<< orphan*/  rational_s_new ; 
 int /*<<< orphan*/  rational_to_f ; 
 int /*<<< orphan*/  rational_to_i ; 
 int /*<<< orphan*/  rational_to_r ; 

void FUNC9(mrb_state *mrb)
{
  struct RClass *rat;

  rat = FUNC5(mrb, "Rational", FUNC4(mrb, "Numeric"));
#ifdef RATIONAL_USE_ISTRUCT
  MRB_SET_INSTANCE_TT(rat, MRB_TT_ISTRUCT);
  mrb_assert(sizeof(struct mrb_rational) < ISTRUCT_DATA_SIZE);
#else
  FUNC2(rat, MRB_TT_DATA);
#endif
  FUNC8(mrb, rat, "new");
  FUNC6(mrb, rat, "_new", rational_s_new, FUNC1(2));
  FUNC7(mrb, rat, "numerator", rational_numerator, FUNC0());
  FUNC7(mrb, rat, "denominator", rational_denominator, FUNC0());
#ifndef MRB_WITHOUT_FLOAT
  FUNC7(mrb, rat, "to_f", rational_to_f, FUNC0());
#endif
  FUNC7(mrb, rat, "to_i", rational_to_i, FUNC0());
  FUNC7(mrb, rat, "to_r", rational_to_r, FUNC0());
  FUNC7(mrb, rat, "negative?", rational_negative_p, FUNC0());
  FUNC7(mrb, mrb->fixnum_class, "to_r", fix_to_r, FUNC0());
}