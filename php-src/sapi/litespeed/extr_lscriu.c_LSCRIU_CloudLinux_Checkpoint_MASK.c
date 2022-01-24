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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  s_native ; 
 int /*<<< orphan*/  s_pid ; 
 int s_restored ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    int iRet;

    if ((!s_native) && (!&s_lscapi_dump_me)) {
        FUNC5("LSCRIU (%d): Not native and unable to dump - abandon one-time "
                   "dump\n", s_pid);
        return;
    }

    iRet = FUNC7();
    if (iRet < 0) {
        FUNC6("LSCRIU: CloudLinux dump of PID: %d, error: %s\n",
                   s_pid, FUNC8(errno));
    }
    if (iRet == 0) {
        // Dumped.  To continue the child must send us the handles back
        FUNC6("LSCRIU: Successful CloudLinux dump of PID: %d\n", s_pid);
    }
    else {
        s_restored = 1;
        FUNC0();
        /*
         Here we have restored the php process, so we should to tell (via
         semaphore) mod_lsapi that we are started and ready to receive data.
        */
        FUNC2();
        FUNC6("LSCRIU: Successful CloudLinux restore of PID: %d, parent: %d.\n",
                   FUNC3(), FUNC4());
    }
    FUNC1(0);
}