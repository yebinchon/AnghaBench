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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void) {
    FUNC1();
    FUNC0(1000);

    /* Not needed to initialize in fact.
        uint8_t data;
        m0110_send(M0110_MODEL);
        data = m0110_recv();
        print("m0110_init model: "); phex(data); print("\n");

        m0110_send(M0110_TEST);
        data = m0110_recv();
        print("m0110_init test: "); phex(data); print("\n");
    */
}