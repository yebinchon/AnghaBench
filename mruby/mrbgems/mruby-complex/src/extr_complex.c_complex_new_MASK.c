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
struct mrb_complex {void* imaginary; void* real; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  void* mrb_float ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RBasic*) ; 
 struct RBasic* FUNC1 (int /*<<< orphan*/ *,struct RClass*,struct mrb_complex**) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct RBasic*) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_float real, mrb_float imaginary)
{
  struct RClass *c = FUNC2(mrb, "Complex");
  struct mrb_complex *p;
  struct RBasic *comp = FUNC1(mrb, c, &p);
  p->real = real;
  p->imaginary = imaginary;
  FUNC0(comp);

  return FUNC3(comp);
}