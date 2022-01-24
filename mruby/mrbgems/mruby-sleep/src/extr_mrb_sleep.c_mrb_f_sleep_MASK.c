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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int mrb_float ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
    time_t beg = FUNC4(0);
    time_t end;
#ifndef MRB_WITHOUT_FLOAT
    mrb_float sec;

    FUNC1(mrb, "f", &sec);
    if (sec >= 0) {
        FUNC5(sec * 1000000);
    }
    else {
        FUNC2(mrb, E_ARGUMENT_ERROR, "time interval must not be negative");
    }
#else
    mrb_int sec;

    mrb_get_args(mrb, "i", &sec);
    if (sec >= 0) {
        sleep(sec);
    } else {
        mrb_raise(mrb, E_ARGUMENT_ERROR, "time interval must not be negative");
    }
#endif
    end = FUNC4(0) - beg;

    return FUNC0(end);
}