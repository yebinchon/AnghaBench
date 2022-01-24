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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3() {
    FUNC1();
    FUNC0();

    asm("int $2");
    asm("int $3");

    FUNC2("Type something, it will go through the kernel\n"
        "Type END to halt the CPU or PAGE to request a kmalloc()\n> ");
}