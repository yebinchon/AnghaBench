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
typedef  int time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(int pid_parent)
{
    // Now get restored.  We know if we're restored if the ppid changes!
    // If we're dumped, we're killed (no use worrying about that!).
    time_t  iTimeStart = 0;
    time_t  iTimeNow;
    int     iRestored = 0;
    do {
        FUNC4(1000);
        FUNC3(&iTimeNow);
        if (!iTimeStart) {
            iTimeStart = iTimeNow;
        }
        else if ((pid_parent != FUNC2()) ||
                    (iTimeNow - iTimeStart > 10)) {
            iRestored = 1;
        }
        else if (iTimeNow - iTimeStart > 5) {
            FUNC0(1, "Timed out waiting to be dumped");
            FUNC1(1);
        }
    } while (!iRestored);
}