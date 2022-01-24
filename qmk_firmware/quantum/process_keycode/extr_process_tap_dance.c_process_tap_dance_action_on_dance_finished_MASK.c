#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  on_dance_finished; } ;
struct TYPE_7__ {int finished; int /*<<< orphan*/  weak_mods; int /*<<< orphan*/  oneshot_mods; } ;
struct TYPE_6__ {TYPE_1__ fn; int /*<<< orphan*/  user_data; TYPE_4__ state; } ;
typedef  TYPE_2__ qk_tap_dance_action_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void FUNC4(qk_tap_dance_action_t *action) {
    if (action->state.finished) return;
    action->state.finished = true;
    FUNC1(action->state.oneshot_mods);
    FUNC2(action->state.weak_mods);
    FUNC3();
    FUNC0(&action->state, action->user_data, action->fn.on_dance_finished);
}