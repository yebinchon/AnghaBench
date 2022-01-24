#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ret_val; } ;
typedef  TYPE_2__ nlr_buf_t ;
typedef  TYPE_3__* mp_obj_t ;
struct TYPE_10__ {scalar_t__ handler; int /*<<< orphan*/  parent; TYPE_1__* methods; } ;
typedef  TYPE_3__ mp_irq_obj_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* disable ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mp_const_none ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  mp_plat_print ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9 (mp_obj_t self_in) {
    mp_irq_obj_t *self = self_in;
    if (self && self->handler != mp_const_none) {
        // when executing code within a handler we must lock the GC to prevent
        // any memory allocations.
        FUNC0();
        nlr_buf_t nlr;
        if (FUNC6(&nlr) == 0) {
            FUNC2(self->handler, self->parent);
            FUNC5();
        }
        else {
            // uncaught exception; disable the callback so that it doesn't run again
            self->methods->disable (self->parent);
            self->handler = mp_const_none;
            // signal the error using the heart beat led and
            // by printing a message
            FUNC7("Uncaught exception in callback handler\n");
            FUNC3(&mp_plat_print, (mp_obj_t)nlr.ret_val);
            FUNC4();
        }
        FUNC1();
    }
}