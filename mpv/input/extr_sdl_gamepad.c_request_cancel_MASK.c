#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_input_src {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ SDL_Event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_input_src*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  gamepad_cancel_wakeup ; 

__attribute__((used)) static void FUNC2(struct mp_input_src *src)
{
    FUNC0(src, "exiting...\n");
    SDL_Event event = { .type = gamepad_cancel_wakeup };
    FUNC1(&event);
}