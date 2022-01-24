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
struct mp_pin {scalar_t__ dir; struct mp_pin* user_conn; } ;

/* Variables and functions */
 scalar_t__ MP_PIN_IN ; 
 scalar_t__ MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_pin*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_pin*) ; 

void FUNC3(struct mp_pin *dst, struct mp_pin *src)
{
    FUNC0(src->dir == MP_PIN_OUT);
    FUNC0(dst->dir == MP_PIN_IN);

    if (dst->user_conn == src) {
        FUNC0(src->user_conn == dst);
        return;
    }

    FUNC2(src);
    FUNC2(dst);

    src->user_conn = dst;
    dst->user_conn = src;

    FUNC1(src);
}