#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_query_keymap_reply_t ;
typedef  int /*<<< orphan*/  xcb_generic_error_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct TYPE_4__ {size_t num; int /*<<< orphan*/ * array; } ;
struct keycode_list {TYPE_1__ list; } ;
typedef  size_t obs_key_t ;
struct TYPE_5__ {int /*<<< orphan*/  super_r_code; int /*<<< orphan*/  super_l_code; struct keycode_list* keycodes; } ;
typedef  TYPE_2__ obs_hotkeys_platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 size_t OBS_KEY_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static bool FUNC5(xcb_connection_t *connection,
			obs_hotkeys_platform_t *context, obs_key_t key)
{
	struct keycode_list *codes = &context->keycodes[key];
	xcb_generic_error_t *error = NULL;
	xcb_query_keymap_reply_t *reply;
	bool pressed = false;

	reply = FUNC4(connection, FUNC3(connection),
				       &error);
	if (error) {
		FUNC0(LOG_WARNING, "xcb_query_keymap failed");

	} else if (key == OBS_KEY_META) {
		pressed = FUNC2(reply, context->super_l_code) ||
			  FUNC2(reply, context->super_r_code);

	} else {
		for (size_t i = 0; i < codes->list.num; i++) {
			if (FUNC2(reply, codes->list.array[i])) {
				pressed = true;
				break;
			}
		}
	}

	FUNC1(reply);
	FUNC1(error);
	return pressed;
}