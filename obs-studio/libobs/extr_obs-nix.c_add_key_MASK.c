#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_keycode_t ;
typedef  size_t obs_key_t ;
struct TYPE_6__ {TYPE_1__* keycodes; } ;
typedef  TYPE_2__ obs_hotkeys_platform_t ;
struct TYPE_7__ {int num; scalar_t__* array; } ;
struct TYPE_5__ {TYPE_3__ list; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

__attribute__((used)) static inline void FUNC3(obs_hotkeys_platform_t *context, obs_key_t key,
			   int code)
{
	xcb_keycode_t kc = (xcb_keycode_t)code;
	FUNC1(context->keycodes[key].list, &kc);

	if (context->keycodes[key].list.num > 1) {
		FUNC0(LOG_DEBUG,
		     "found alternate keycode %d for %s "
		     "which already has keycode %d",
		     code, FUNC2(key),
		     (int)context->keycodes[key].list.array[0]);
	}
}