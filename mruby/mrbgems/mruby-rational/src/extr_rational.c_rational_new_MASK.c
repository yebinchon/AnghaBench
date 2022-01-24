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
struct mrb_rational {void* denominator; void* numerator; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  void* mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RBasic*) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct RBasic*) ; 
 struct RBasic* FUNC3 (int /*<<< orphan*/ *,struct RClass*,struct mrb_rational**) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_int numerator, mrb_int denominator)
{
  struct RClass *c = FUNC1(mrb, "Rational");
  struct mrb_rational *p;
  struct RBasic *rat = FUNC3(mrb, c, &p);
  p->numerator = numerator;
  p->denominator = denominator;
  FUNC0(rat);
  return FUNC2(rat);
}