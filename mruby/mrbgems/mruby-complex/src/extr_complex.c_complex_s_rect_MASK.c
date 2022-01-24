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
typedef  double mrb_float ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,double*,double*) ; 

__attribute__((used)) static mrb_value
FUNC2(mrb_state *mrb, mrb_value self)
{
  mrb_float real, imaginary = 0.0;

  FUNC1(mrb, "f|f", &real, &imaginary);
  return FUNC0(mrb, real, imaginary);
}