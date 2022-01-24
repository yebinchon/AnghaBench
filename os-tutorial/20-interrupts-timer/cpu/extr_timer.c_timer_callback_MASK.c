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
typedef  int /*<<< orphan*/  registers_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  tick ; 

__attribute__((used)) static void FUNC2(registers_t regs) {
    tick++;
    FUNC1("Tick: ");
    
    char tick_ascii[256];
    FUNC0(tick, tick_ascii);
    FUNC1(tick_ascii);
    FUNC1("\n");
}