#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_6__ {scalar_t__ exc; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(mrb_state *mrb)
{
  /* evaluate the test */
  mrb_value result = FUNC1(mrb, FUNC3(mrb), "report", 0);
  /* did an exception occur? */
  if (mrb->exc) {
    FUNC2(mrb);
    mrb->exc = 0;
    return EXIT_FAILURE;
  }
  else {
    return FUNC0(result) ? EXIT_SUCCESS : EXIT_FAILURE;
  }
}