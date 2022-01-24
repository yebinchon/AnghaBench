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
typedef  scalar_t__ mp_obj_t ;
typedef  int /*<<< orphan*/  microbit_image_obj_t ;
typedef  int /*<<< orphan*/  microbit_display_obj_t ;
typedef  int /*<<< orphan*/  MP_STATE_VM ;

/* Variables and functions */
 int /*<<< orphan*/ * BLANK_IMAGE ; 
 scalar_t__ MP_OBJ_STOP_ITERATION ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 
 int async_clear ; 
 int /*<<< orphan*/  async_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  microbit_display_obj ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const) ; 
 int /*<<< orphan*/  microbit_image_type ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (scalar_t__,size_t*) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 

__attribute__((used)) static void FUNC8(mp_obj_t obj) {
    microbit_display_obj_t *display = (microbit_display_obj_t*)FUNC0(async_data)[0];
    if (obj == MP_OBJ_STOP_ITERATION) {
        if (async_clear) {
            FUNC2(&microbit_display_obj, BLANK_IMAGE);
            async_clear = false;
        } else {
            FUNC1();
        }
    } else if (FUNC4(obj) == &microbit_image_type) {
        FUNC2(display, (microbit_image_obj_t *)obj);
    } else if (FUNC5(obj)) {
        size_t len;
        const char *str = FUNC7(obj, &len);
        if (len == 1) {
            FUNC2(display, FUNC3(str[0]));
        } else {
            FUNC1();
        }
    } else {
        MP_STATE_VM(mp_pending_exception) = FUNC6(&mp_type_TypeError, "not an image.");
        FUNC1();
    }
}