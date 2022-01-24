#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct obs_core_hotkeys {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sceneitem_hide; int /*<<< orphan*/  sceneitem_show; int /*<<< orphan*/  push_to_talk; int /*<<< orphan*/  push_to_mute; int /*<<< orphan*/  unmute; int /*<<< orphan*/  mute; } ;
struct TYPE_2__ {struct obs_core_hotkeys hotkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* obs ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct obs_core_hotkeys*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	struct obs_core_hotkeys *hotkeys = &obs->hotkeys;

	FUNC0(hotkeys->mute);
	FUNC0(hotkeys->unmute);
	FUNC0(hotkeys->push_to_mute);
	FUNC0(hotkeys->push_to_talk);
	FUNC0(hotkeys->sceneitem_show);
	FUNC0(hotkeys->sceneitem_hide);

	FUNC1();

	FUNC2(hotkeys);
	FUNC3(&hotkeys->mutex);
}