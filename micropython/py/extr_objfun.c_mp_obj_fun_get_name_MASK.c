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
typedef  int /*<<< orphan*/  qstr ;
struct TYPE_4__ {int /*<<< orphan*/ * type; } ;
struct TYPE_5__ {int /*<<< orphan*/ * bytecode; TYPE_1__ base; } ;
typedef  TYPE_2__ mp_obj_fun_bc_t ;
typedef  int /*<<< orphan*/  mp_const_obj_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_QSTR_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  mp_type_fun_native ; 
 int /*<<< orphan*/  mp_type_native_gen_wrap ; 

qstr FUNC3(mp_const_obj_t fun_in) {
    const mp_obj_fun_bc_t *fun = FUNC1(fun_in);
    #if MICROPY_EMIT_NATIVE
    if (fun->base.type == &mp_type_fun_native || fun->base.type == &mp_type_native_gen_wrap) {
        // TODO native functions don't have name stored
        return MP_QSTR_;
    }
    #endif

    const byte *bc = fun->bytecode;
    FUNC0(bc);
    return FUNC2(bc);
}