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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ mp_uint_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  mp_int_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,size_t) ; 
 scalar_t__ MP_SMALL_INT_MAX ; 
 scalar_t__ MP_SMALL_INT_MIN ; 
 scalar_t__ FUNC1 (char) ; 
 long long FUNC2 (size_t,scalar_t__,int,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char,char,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (long long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (long long) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

mp_obj_t FUNC11(char struct_type, char val_type, byte *p_base, byte **ptr) {
    byte *p = *ptr;
    size_t align;

    size_t size = FUNC3(struct_type, val_type, &align);
    if (struct_type == '@') {
        // Align p relative to p_base
        p = p_base + (uintptr_t)FUNC0(p - p_base, align);
        #if MP_ENDIANNESS_LITTLE
        struct_type = '<';
        #else
        struct_type = '>';
        #endif
    }
    *ptr = p + size;

    long long val = FUNC2(size, FUNC1(val_type), (struct_type == '>'), p);

    if (val_type == 'O') {
        return (mp_obj_t)(mp_uint_t)val;
    } else if (val_type == 'S') {
        const char *s_val = (const char*)(uintptr_t)(mp_uint_t)val;
        return FUNC9(s_val, FUNC10(s_val));
#if MICROPY_PY_BUILTINS_FLOAT
    } else if (val_type == 'f') {
        union { uint32_t i; float f; } fpu = {val};
        return mp_obj_new_float(fpu.f);
    } else if (val_type == 'd') {
        union { uint64_t i; double f; } fpu = {val};
        return mp_obj_new_float(fpu.f);
#endif
    } else if (FUNC1(val_type)) {
        if ((long long)MP_SMALL_INT_MIN <= val && val <= (long long)MP_SMALL_INT_MAX) {
            return FUNC5((mp_int_t)val);
        } else {
            return FUNC6(val);
        }
    } else {
        if ((unsigned long long)val <= (unsigned long long)MP_SMALL_INT_MAX) {
            return FUNC7((mp_uint_t)val);
        } else {
            return FUNC8(val);
        }
    }
}