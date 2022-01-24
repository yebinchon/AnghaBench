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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void* FUNC6(void* core) {
    pthread_t thread;
    cpu_set_t cpu_set;
    static size_t cpu_wakeups = 0;
    static int errors = 0;

    FUNC1(&cpu_set);
    FUNC0(*(int*)core, &cpu_set);

    thread = FUNC3();
    if(FUNC5(FUNC4(thread, sizeof(cpu_set_t), &cpu_set))) {
        if(FUNC5(errors < 8)) {
            FUNC2("Cannot set CPU affinity for core %d", *(int*)core);
            errors++;
        }
        else if(FUNC5(errors < 9)) {
            FUNC2("CPU affinity errors are disabled");
            errors++;
        }
    }

    // Make the CPU core do something to force it to update its idle counters
    cpu_wakeups++;

    return 0;
}