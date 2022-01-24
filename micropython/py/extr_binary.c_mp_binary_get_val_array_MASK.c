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
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  long mp_int_t ;

/* Variables and functions */
#define  BYTEARRAY_TYPECODE 128 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (long long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long) ; 

mp_obj_t FUNC6(char typecode, void *p, size_t index) {
    mp_int_t val = 0;
    switch (typecode) {
        case 'b':
            val = ((signed char*)p)[index];
            break;
        case BYTEARRAY_TYPECODE:
        case 'B':
            val = ((unsigned char*)p)[index];
            break;
        case 'h':
            val = ((short*)p)[index];
            break;
        case 'H':
            val = ((unsigned short*)p)[index];
            break;
        case 'i':
            return FUNC2(((int*)p)[index]);
        case 'I':
            return FUNC4(((unsigned int*)p)[index]);
        case 'l':
            return FUNC2(((long*)p)[index]);
        case 'L':
            return FUNC4(((unsigned long*)p)[index]);
        #if MICROPY_LONGINT_IMPL != MICROPY_LONGINT_IMPL_NONE
        case 'q':
            return mp_obj_new_int_from_ll(((long long*)p)[index]);
        case 'Q':
            return mp_obj_new_int_from_ull(((unsigned long long*)p)[index]);
        #endif
#if MICROPY_PY_BUILTINS_FLOAT
        case 'f':
            return mp_obj_new_float(((float*)p)[index]);
        case 'd':
            return mp_obj_new_float(((double*)p)[index]);
#endif
        // Extension to CPython: array of objects
        case 'O':
            return ((mp_obj_t*)p)[index];
        // Extension to CPython: array of pointers
        case 'P':
            return FUNC2((mp_int_t)(uintptr_t)((void**)p)[index]);
    }
    return FUNC0(val);
}