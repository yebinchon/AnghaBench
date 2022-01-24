#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_4__ {struct RClass* array_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mrb_ary_assoc ; 
 int /*<<< orphan*/  mrb_ary_at ; 
 int /*<<< orphan*/  mrb_ary_rassoc ; 
 int /*<<< orphan*/  mrb_ary_slice_bang ; 
 int /*<<< orphan*/  mrb_ary_values_at ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(mrb_state* mrb)
{
  struct RClass * a = mrb->array_class;

  FUNC3(mrb, a, "assoc",  mrb_ary_assoc,  FUNC2(1));
  FUNC3(mrb, a, "at",     mrb_ary_at,     FUNC2(1));
  FUNC3(mrb, a, "rassoc", mrb_ary_rassoc, FUNC2(1));
  FUNC3(mrb, a, "values_at", mrb_ary_values_at, FUNC0());
  FUNC3(mrb, a, "slice!", mrb_ary_slice_bang,   FUNC1(1,1));
}