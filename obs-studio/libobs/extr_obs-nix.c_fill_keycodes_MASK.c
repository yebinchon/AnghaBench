#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xcb_keysym_t ;
struct TYPE_10__ {scalar_t__ keysyms_per_keycode; } ;
typedef  TYPE_1__ xcb_get_keyboard_mapping_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_keyboard_mapping_cookie_t ;
typedef  TYPE_1__ xcb_generic_error_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct xcb_setup_t {int min_keycode; int max_keycode; } ;
struct obs_core_hotkeys {TYPE_3__* platform_context; } ;
typedef  int /*<<< orphan*/  obs_key_t ;
struct TYPE_11__ {int min_keycode; int num_keysyms; int syms_per_code; int super_l_code; int super_r_code; int /*<<< orphan*/  keysyms; int /*<<< orphan*/  display; } ;
typedef  TYPE_3__ obs_hotkeys_platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  OBS_KEY_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ const XK_Super_L ; 
 scalar_t__ const XK_Super_R ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__* FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 struct xcb_setup_t* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC10(struct obs_core_hotkeys *hotkeys)
{
	obs_hotkeys_platform_t *context = hotkeys->platform_context;
	xcb_connection_t *connection = FUNC0(context->display);
	const struct xcb_setup_t *setup = FUNC9(connection);
	xcb_get_keyboard_mapping_cookie_t cookie;
	xcb_get_keyboard_mapping_reply_t *reply;
	xcb_generic_error_t *error = NULL;
	int code;

	int mincode = setup->min_keycode;
	int maxcode = setup->max_keycode;

	context->min_keycode = setup->min_keycode;

	cookie = FUNC6(connection, mincode,
					  maxcode - mincode + 1);

	reply = FUNC8(connection, cookie, &error);

	if (error || !reply) {
		FUNC2(LOG_WARNING, "xcb_get_keyboard_mapping_reply failed");
		goto error1;
	}

	const xcb_keysym_t *keysyms = FUNC7(reply);
	int syms_per_code = (int)reply->keysyms_per_keycode;

	context->num_keysyms = (maxcode - mincode + 1) * syms_per_code;
	context->syms_per_code = syms_per_code;
	context->keysyms =
		FUNC3(keysyms, sizeof(xcb_keysym_t) * context->num_keysyms);

	for (code = mincode; code <= maxcode; code++) {
		const xcb_keysym_t *sym;
		obs_key_t key;

		sym = &keysyms[(code - mincode) * syms_per_code];

		for (int i = 0; i < syms_per_code; i++) {
			if (!sym[i])
				break;

			if (sym[i] == XK_Super_L) {
				context->super_l_code = code;
				break;
			} else if (sym[i] == XK_Super_R) {
				context->super_r_code = code;
				break;
			} else {
				key = FUNC5(context, sym[i]);

				if (key != OBS_KEY_NONE) {
					FUNC1(context, key, code);
					break;
				}
			}
		}
	}

error1:
	FUNC4(reply);
	FUNC4(error);

	return error != NULL || reply == NULL;
}