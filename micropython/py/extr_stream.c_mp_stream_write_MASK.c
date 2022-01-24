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
typedef  int /*<<< orphan*/  mp_uint_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_const_none ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,size_t,int*,int /*<<< orphan*/ ) ; 

mp_obj_t FUNC4(mp_obj_t self_in, const void *buf, size_t len, byte flags) {
    int error;
    mp_uint_t out_sz = FUNC3(self_in, (void*)buf, len, &error, flags);
    if (error != 0) {
        if (FUNC1(error)) {
            // http://docs.python.org/3/library/io.html#io.RawIOBase.write
            // "None is returned if the raw stream is set not to block and
            // no single byte could be readily written to it."
            return mp_const_none;
        }
        FUNC2(error);
    } else {
        return FUNC0(out_sz);
    }
}