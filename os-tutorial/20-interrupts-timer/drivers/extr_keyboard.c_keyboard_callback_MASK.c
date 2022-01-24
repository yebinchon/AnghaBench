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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  registers_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(registers_t regs) {
    /* The PIC leaves us the scancode in port 0x60 */
    u8 scancode = FUNC2(0x60);
    char *sc_ascii;
    FUNC0(scancode, sc_ascii);
    FUNC1("Keyboard scancode: ");
    FUNC1(sc_ascii);
    FUNC1(", ");
    FUNC3(scancode);
    FUNC1("\n");
}