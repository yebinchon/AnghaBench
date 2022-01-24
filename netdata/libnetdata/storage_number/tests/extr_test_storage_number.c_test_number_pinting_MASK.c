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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,double) ; 

__attribute__((used)) static void FUNC2(void **state)
{
    (void)state;

    char value[50];

    FUNC1(value, 0);
    FUNC0(value, "0");

    FUNC1(value, 0.0000001);
    FUNC0(value, "0.0000001");

    FUNC1(value, 0.00000009);
    FUNC0(value, "0.0000001");

    FUNC1(value, 0.000000001);
    FUNC0(value, "0");

    FUNC1(value, 99.99999999999999999);
    FUNC0(value, "100");

    FUNC1(value, -99.99999999999999999);
    FUNC0(value, "-100");

    FUNC1(value, 123.4567890123456789);
    FUNC0(value, "123.456789");

    FUNC1(value, 9999.9999999);
    FUNC0(value, "9999.9999999");

    FUNC1(value, -9999.9999999);
    FUNC0(value, "-9999.9999999");
}