#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ret_val; } ;
typedef  TYPE_2__ nlr_buf_t ;
struct TYPE_8__ {scalar_t__ handler; int /*<<< orphan*/  parent; TYPE_1__* methods; scalar_t__ ishard; } ;
typedef  TYPE_3__ mp_irq_obj_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* trigger ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mp_const_none ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_plat_print ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(mp_irq_obj_t *self) {
    if (self->handler != mp_const_none) {
        if (self->ishard) {
            // When executing code within a handler we must lock the GC to prevent
            // any memory allocations.
            FUNC1();
            nlr_buf_t nlr;
            if (FUNC7(&nlr) == 0) {
                FUNC3(self->handler, self->parent);
                FUNC6();
            } else {
                // Uncaught exception; disable the callback so that it doesn't run again
                self->methods->trigger(self->parent, 0);
                self->handler = mp_const_none;
                FUNC8("Uncaught exception in IRQ callback handler\n");
                FUNC4(&mp_plat_print, FUNC0(nlr.ret_val));
            }
            FUNC2();
        } else {
            // Schedule call to user function
            FUNC5(self->handler, self->parent);
        }
    }
}