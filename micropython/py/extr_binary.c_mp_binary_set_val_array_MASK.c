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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_ENDIANNESS_BIG ; 
 size_t FUNC0 (char,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char,void*,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_type_int ; 

void FUNC6(char typecode, void *p, size_t index, mp_obj_t val_in) {
    switch (typecode) {
#if MICROPY_PY_BUILTINS_FLOAT
        case 'f':
            ((float*)p)[index] = mp_obj_get_float(val_in);
            break;
        case 'd':
            ((double*)p)[index] = mp_obj_get_float(val_in);
            break;
#endif
        // Extension to CPython: array of objects
        case 'O':
            ((mp_obj_t*)p)[index] = val_in;
            break;
        default:
            #if MICROPY_LONGINT_IMPL != MICROPY_LONGINT_IMPL_NONE
            if (mp_obj_is_type(val_in, &mp_type_int)) {
                size_t size = mp_binary_get_size('@', typecode, NULL);
                mp_obj_int_to_bytes_impl(val_in, MP_ENDIANNESS_BIG,
                    size, (uint8_t*)p + index * size);
                return;
            }
            #endif
            FUNC1(typecode, p, index, FUNC3(val_in));
    }
}