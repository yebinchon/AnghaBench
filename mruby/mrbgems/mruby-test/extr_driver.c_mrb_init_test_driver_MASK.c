#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_10__ {struct RClass* kernel_module; } ;
typedef  TYPE_1__ mrb_state ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MRB_INT_BIT ; 
 int /*<<< orphan*/  MRB_INT_MAX ; 
 int /*<<< orphan*/  MRB_INT_MIN ; 
 int /*<<< orphan*/  m_str_match_p ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  t_print ; 

void
FUNC11(mrb_state *mrb, mrb_bool verbose)
{
  struct RClass *krn, *mrbtest;

  krn = mrb->kernel_module;
  FUNC3(mrb, krn, "t_print", t_print, FUNC0());
  FUNC3(mrb, krn, "_str_match?", m_str_match_p, FUNC1(2));

  mrbtest = FUNC4(mrb, "Mrbtest");

  FUNC2(mrb, mrbtest, "FIXNUM_MAX", FUNC5(MRB_INT_MAX));
  FUNC2(mrb, mrbtest, "FIXNUM_MIN", FUNC5(MRB_INT_MIN));
  FUNC2(mrb, mrbtest, "FIXNUM_BIT", FUNC5(MRB_INT_BIT));

#ifndef MRB_WITHOUT_FLOAT
#ifdef MRB_USE_FLOAT
  mrb_define_const(mrb, mrbtest, "FLOAT_TOLERANCE", mrb_float_value(mrb, 1e-6));
#else
  FUNC2(mrb, mrbtest, "FLOAT_TOLERANCE", FUNC6(mrb, 1e-12));
#endif
#endif

  FUNC8(mrb);

  if (verbose) {
    FUNC7(mrb, FUNC9(mrb, "$mrbtest_verbose"), FUNC10());
  }
}