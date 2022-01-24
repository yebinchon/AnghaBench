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
struct TYPE_4__ {int /*<<< orphan*/ * ret_val; } ;
typedef  TYPE_1__ nlr_buf_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_5__ {int /*<<< orphan*/ * type; } ;
typedef  TYPE_2__ mp_obj_base_t ;
typedef  int /*<<< orphan*/  MP_STATE_VM ;

/* Variables and functions */
#define  ASYNC_MODE_ANIMATION 129 
#define  ASYNC_MODE_CLEAR 128 
 int /*<<< orphan*/  BLANK_IMAGE ; 
 scalar_t__ MILLISECONDS_PER_MACRO_TICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MP_OBJ_STOP_ITERATION ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  async_data ; 
 scalar_t__ async_delay ; 
 int /*<<< orphan*/  async_iterator ; 
 int async_mode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ async_tick ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  microbit_display_obj ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_plat_print ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_MemoryError ; 
 int /*<<< orphan*/  mp_type_StopIteration ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13(void) {
    async_tick += MILLISECONDS_PER_MACRO_TICK;
    if (async_tick < async_delay) {
        return;
    }
    async_tick = 0;
    switch (async_mode) {
        case ASYNC_MODE_ANIMATION:
        {
            if (FUNC1(async_data)[0] == NULL || FUNC1(async_data)[1] == NULL) {
                FUNC2();
                break;
            }
            /* WARNING: We are executing in an interrupt handler.
             * If an exception is raised here then we must hand it to the VM. */
            mp_obj_t obj;
            nlr_buf_t nlr;
            FUNC4();
            if (FUNC12(&nlr) == 0) {
                obj = FUNC7(async_iterator);
                FUNC11();
                FUNC5();
            } else {
                FUNC5();
                if (!FUNC9(FUNC0(((mp_obj_base_t*)nlr.ret_val)->type),
                    FUNC0(&mp_type_StopIteration))) {
                    // An exception other than StopIteration, so set it for the VM to raise later
                    // If memory error, write an appropriate message.
                    if (FUNC8(nlr.ret_val) == &mp_type_MemoryError) {
                        FUNC10(&mp_plat_print, "Allocation in interrupt handler");
                    }
                    MP_STATE_VM(mp_pending_exception) = FUNC0(nlr.ret_val);
                }
                obj = MP_OBJ_STOP_ITERATION;
            }
            FUNC3(obj);
            break;
        }
        case ASYNC_MODE_CLEAR:
            FUNC6(&microbit_display_obj, BLANK_IMAGE);
            FUNC2();
            break;
    }
}