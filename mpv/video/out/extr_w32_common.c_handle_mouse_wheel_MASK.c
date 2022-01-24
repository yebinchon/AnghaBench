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
struct vo_w32_state {int /*<<< orphan*/  input_ctx; } ;

/* Variables and functions */
 int MP_WHEEL_DOWN ; 
 int MP_WHEEL_LEFT ; 
 int MP_WHEEL_RIGHT ; 
 int MP_WHEEL_UP ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct vo_w32_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct vo_w32_state *w32, bool horiz, int val)
{
    int code;
    if (horiz)
        code = val > 0 ? MP_WHEEL_RIGHT : MP_WHEEL_LEFT;
    else
        code = val > 0 ? MP_WHEEL_UP : MP_WHEEL_DOWN;
    FUNC2(w32->input_ctx, code | FUNC1(w32), FUNC0(val) / 120.);
}