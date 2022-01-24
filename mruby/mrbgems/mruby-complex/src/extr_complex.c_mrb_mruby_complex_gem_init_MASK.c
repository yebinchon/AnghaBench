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
struct mrb_complex {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_8__ {struct RClass* kernel_module; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int ISTRUCT_DATA_SIZE ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  MRB_TT_ISTRUCT ; 
 int /*<<< orphan*/  complex_div ; 
 int /*<<< orphan*/  complex_imaginary ; 
 int /*<<< orphan*/  complex_real ; 
 int /*<<< orphan*/  complex_s_rect ; 
 int /*<<< orphan*/  complex_to_c ; 
 int /*<<< orphan*/  complex_to_f ; 
 int /*<<< orphan*/  complex_to_i ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct RClass* FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct RClass*,char*) ; 

void FUNC10(mrb_state *mrb)
{
  struct RClass *comp;

#ifdef COMPLEX_USE_ISTRUCT
  mrb_assert(sizeof(struct mrb_complex) < ISTRUCT_DATA_SIZE);
#endif
  comp = FUNC6(mrb, "Complex", FUNC5(mrb, "Numeric"));
#ifdef COMPLEX_USE_ISTRUCT
  MRB_SET_INSTANCE_TT(comp, MRB_TT_ISTRUCT);
#else
  FUNC3(comp, MRB_TT_DATA);
#endif
  FUNC9(mrb, comp, "new");
  FUNC7(mrb, comp, "rectangular", complex_s_rect, FUNC2(1)|FUNC1(1));
  FUNC7(mrb, comp, "rect", complex_s_rect, FUNC2(1)|FUNC1(1));
  FUNC8(mrb, mrb->kernel_module, "Complex", complex_s_rect, FUNC2(1)|FUNC1(1));
  FUNC8(mrb, comp, "real", complex_real, FUNC0());
  FUNC8(mrb, comp, "imaginary", complex_imaginary, FUNC0());
  FUNC8(mrb, comp, "to_f", complex_to_f, FUNC0());
  FUNC8(mrb, comp, "to_i", complex_to_i, FUNC0());
  FUNC8(mrb, comp, "to_c", complex_to_c, FUNC0());
  FUNC8(mrb, comp, "__div__", complex_div, FUNC2(1));
}