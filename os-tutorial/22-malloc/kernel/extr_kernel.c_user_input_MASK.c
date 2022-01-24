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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

void FUNC4(char *input) {
    if (FUNC3(input, "END") == 0) {
        FUNC2("Stopping the CPU. Bye!\n");
        asm volatile("hlt");
    } else if (FUNC3(input, "PAGE") == 0) {
        /* Lesson 22: Code to test kmalloc, the rest is unchanged */
        u32 phys_addr;
        u32 page = FUNC1(1000, 1, &phys_addr);
        char page_str[16] = "";
        FUNC0(page, page_str);
        char phys_str[16] = "";
        FUNC0(phys_addr, phys_str);
        FUNC2("Page: ");
        FUNC2(page_str);
        FUNC2(", physical address: ");
        FUNC2(phys_str);
        FUNC2("\n");
    }
    FUNC2("You said: ");
    FUNC2(input);
    FUNC2("\n> ");
}