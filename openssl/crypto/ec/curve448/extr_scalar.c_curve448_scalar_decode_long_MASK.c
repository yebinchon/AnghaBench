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
typedef  int /*<<< orphan*/  curve448_scalar_t ;

/* Variables and functions */
 size_t C448_SCALAR_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curve448_scalar_one ; 
 int /*<<< orphan*/  curve448_scalar_zero ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc_r2 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 

void FUNC8(curve448_scalar_t s,
                                 const unsigned char *ser, size_t ser_len)
{
    size_t i;
    curve448_scalar_t t1, t2;

    if (ser_len == 0) {
        FUNC2(s, curve448_scalar_zero);
        return;
    }

    i = ser_len - (ser_len % C448_SCALAR_BYTES);
    if (i == ser_len)
        i -= C448_SCALAR_BYTES;

    FUNC7(t1, &ser[i], ser_len - i);

    if (ser_len == sizeof(curve448_scalar_t)) {
        FUNC0(i == 0);
        /* ham-handed reduce */
        FUNC5(s, t1, curve448_scalar_one);
        FUNC4(t1);
        return;
    }

    while (i) {
        i -= C448_SCALAR_BYTES;
        FUNC6(t1, t1, sc_r2);
        (void)FUNC3(t2, ser + i);
        FUNC1(t1, t1, t2);
    }

    FUNC2(s, t1);
    FUNC4(t1);
    FUNC4(t2);
}