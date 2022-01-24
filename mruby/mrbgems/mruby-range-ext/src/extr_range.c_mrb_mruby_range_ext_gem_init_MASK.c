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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  range_cover ; 
 int /*<<< orphan*/  range_last ; 
 int /*<<< orphan*/  range_size ; 

void
FUNC5(mrb_state* mrb)
{
  struct RClass * s = FUNC3(mrb, "Range");

  FUNC4(mrb, s, "cover?", range_cover, FUNC2(1));
  FUNC4(mrb, s, "last",   range_last,  FUNC1(1));
  FUNC4(mrb, s, "size",   range_size,  FUNC0());
}