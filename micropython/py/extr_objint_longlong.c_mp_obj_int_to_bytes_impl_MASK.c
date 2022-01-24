#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mp_obj_t ;
struct TYPE_5__ {long long val; } ;
typedef  TYPE_1__ mp_obj_int_t ;
typedef  long long byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_type_int ; 

void FUNC2(mp_obj_t self_in, bool big_endian, size_t len, byte *buf) {
    FUNC0(FUNC1(self_in, &mp_type_int));
    mp_obj_int_t *self = self_in;
    long long val = self->val;
    if (big_endian) {
        byte *b = buf + len;
        while (b > buf) {
            *--b = val;
            val >>= 8;
        }
    } else {
        for (; len > 0; --len) {
            *buf++ = val;
            val >>= 8;
        }
    }
}