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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  emu_tasks ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static inline int FUNC3(uint8_t prio) {
    int id = FUNC1(prio);
    if (id < 0 || id >= FUNC0(emu_tasks)) {
        FUNC2("task prio out of range: %d\n", prio);
        while (1);
    }
    return id;
}