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
struct input_opts {double doubleclick_time; int /*<<< orphan*/  enable_mouse_movements; } ;
struct input_ctx {int last_doubleclick_key_down; double last_doubleclick_time; struct input_opts* opts; } ;

/* Variables and functions */
 int MP_INPUT_RELEASE_ALL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int MP_KEY_MODIFIER_MASK ; 
 int MP_KEY_MOUSE_ENTER ; 
 int MP_KEY_MOUSE_LEAVE ; 
 int MP_KEY_STATE_DOWN ; 
 int MP_MBTN_BASE ; 
 int MP_MBTN_DBL_BASE ; 
 int MP_MBTN_LEFT ; 
 int MP_MBTN_RIGHT ; 
 int /*<<< orphan*/  FUNC3 (struct input_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_ctx*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_ctx*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 double FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_ctx*,int,double*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_ctx*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct input_ctx*) ; 

__attribute__((used)) static void FUNC12(struct input_ctx *ictx, int code, double scale,
                              bool force_mouse)
{
    struct input_opts *opts = ictx->opts;

    code = FUNC7(code);
    int unmod = code & ~MP_KEY_MODIFIER_MASK;
    if (code == MP_INPUT_RELEASE_ALL) {
        FUNC3(ictx, "release all\n");
        FUNC10(ictx, false);
        return;
    }
    if (!opts->enable_mouse_movements && FUNC0(unmod) && !force_mouse)
        return;
    if (unmod == MP_KEY_MOUSE_LEAVE || unmod == MP_KEY_MOUSE_ENTER) {
        FUNC11(ictx);
        FUNC6(ictx, FUNC4(ictx, NULL, code));
        return;
    }
    double now = FUNC8();
    // ignore system-doubleclick if we generate these events ourselves
    if (!force_mouse && opts->doubleclick_time && FUNC1(unmod))
        return;
    int units = 1;
    if (FUNC2(unmod) && !FUNC9(ictx, unmod, &scale, &units))
        return;
    FUNC5(ictx, code, scale, units);
    if (code & MP_KEY_STATE_DOWN) {
        code &= ~MP_KEY_STATE_DOWN;
        if (ictx->last_doubleclick_key_down == code &&
            now - ictx->last_doubleclick_time < opts->doubleclick_time / 1000.0)
        {
            if (code >= MP_MBTN_LEFT && code <= MP_MBTN_RIGHT) {
                FUNC5(ictx, code - MP_MBTN_BASE + MP_MBTN_DBL_BASE,
                              1, 1);
            }
        }
        ictx->last_doubleclick_key_down = code;
        ictx->last_doubleclick_time = now;
    }
}