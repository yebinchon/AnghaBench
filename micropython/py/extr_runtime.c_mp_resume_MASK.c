#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_vm_return_kind_t ;
struct TYPE_7__ {scalar_t__ (* iternext ) (scalar_t__) ;} ;
typedef  TYPE_1__ mp_obj_type_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__ MP_OBJ_STOP_ITERATION ; 
 int /*<<< orphan*/  MP_QSTR___next__ ; 
 int /*<<< orphan*/  MP_QSTR_close ; 
 int /*<<< orphan*/  MP_QSTR_send ; 
 int /*<<< orphan*/  MP_QSTR_throw ; 
 int /*<<< orphan*/  MP_VM_RETURN_EXCEPTION ; 
 int /*<<< orphan*/  MP_VM_RETURN_NORMAL ; 
 int /*<<< orphan*/  MP_VM_RETURN_YIELD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ mp_const_none ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 TYPE_1__* FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ mp_type_GeneratorExit ; 
 int /*<<< orphan*/  mp_type_RuntimeError ; 
 TYPE_1__ mp_type_StopIteration ; 
 TYPE_1__ mp_type_gen_instance ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

mp_vm_return_kind_t FUNC12(mp_obj_t self_in, mp_obj_t send_value, mp_obj_t throw_value, mp_obj_t *ret_val) {
    FUNC1((send_value != MP_OBJ_NULL) ^ (throw_value != MP_OBJ_NULL));
    mp_obj_type_t *type = FUNC8(self_in);

    if (type == &mp_type_gen_instance) {
        return FUNC7(self_in, send_value, throw_value, ret_val);
    }

    if (type->iternext != NULL && send_value == mp_const_none) {
        mp_obj_t ret = type->iternext(self_in);
        *ret_val = ret;
        if (ret != MP_OBJ_STOP_ITERATION) {
            return MP_VM_RETURN_YIELD;
        } else {
            // Emulate raise StopIteration()
            // Special case, handled in vm.c
            return MP_VM_RETURN_NORMAL;
        }
    }

    mp_obj_t dest[3]; // Reserve slot for send() arg

    // Python instance iterator protocol
    if (send_value == mp_const_none) {
        FUNC4(self_in, MP_QSTR___next__, dest);
        if (dest[0] != MP_OBJ_NULL) {
            *ret_val = FUNC2(0, 0, dest);
            return MP_VM_RETURN_YIELD;
        }
    }

    // Either python instance generator protocol, or native object
    // generator protocol.
    if (send_value != MP_OBJ_NULL) {
        FUNC3(self_in, MP_QSTR_send, dest);
        dest[2] = send_value;
        *ret_val = FUNC2(1, 0, dest);
        return MP_VM_RETURN_YIELD;
    }

    FUNC1(throw_value != MP_OBJ_NULL);
    {
        if (FUNC9(FUNC0(FUNC8(throw_value)), FUNC0(&mp_type_GeneratorExit))) {
            FUNC4(self_in, MP_QSTR_close, dest);
            if (dest[0] != MP_OBJ_NULL) {
                // TODO: Exceptions raised in close() are not propagated,
                // printed to sys.stderr
                *ret_val = FUNC2(0, 0, dest);
                // We assume one can't "yield" from close()
                return MP_VM_RETURN_NORMAL;
            }
        } else {
            FUNC4(self_in, MP_QSTR_throw, dest);
            if (dest[0] != MP_OBJ_NULL) {
                dest[2] = throw_value;
                *ret_val = FUNC2(1, 0, dest);
                // If .throw() method returned, we assume it's value to yield
                // - any exception would be thrown with nlr_raise().
                return MP_VM_RETURN_YIELD;
            }
        }
        // If there's nowhere to throw exception into, then we assume that object
        // is just incapable to handle it, so any exception thrown into it
        // will be propagated up. This behavior is approved by test_pep380.py
        // test_delegation_of_close_to_non_generator(),
        //  test_delegating_throw_to_non_generator()
        if (FUNC6(throw_value, FUNC0(&mp_type_StopIteration))) {
            // PEP479: if StopIteration is raised inside a generator it is replaced with RuntimeError
            *ret_val = FUNC10(&mp_type_RuntimeError, "generator raised StopIteration");
        } else {
            *ret_val = FUNC5(throw_value);
        }
        return MP_VM_RETURN_EXCEPTION;
    }
}