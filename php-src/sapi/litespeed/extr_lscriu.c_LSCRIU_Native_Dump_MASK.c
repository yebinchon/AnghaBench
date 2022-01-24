#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  m_chSocketDir; int /*<<< orphan*/  m_chImageDirectory; int /*<<< orphan*/  m_iPidToDump; } ;
typedef  TYPE_1__ criu_native_dump_t ;
typedef  int /*<<< orphan*/  criu_native_dump ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_pid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char) ; 
 int FUNC6 (int,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(pid_t iPid,
                              char  *pchImagePath,
                              int   iFdNative) {
    criu_native_dump_t criu_native_dump;
    char *pchLastSlash;

    FUNC2(&criu_native_dump, 0, sizeof(criu_native_dump));
    criu_native_dump.m_iPidToDump = iPid;
    FUNC4(criu_native_dump.m_chImageDirectory, pchImagePath,
            sizeof(criu_native_dump.m_chImageDirectory));
    pchLastSlash = FUNC5(criu_native_dump.m_chSocketDir,'/');
    if (pchLastSlash) {
        pchLastSlash++;
        (*pchLastSlash) = 0;
    }
    FUNC0("LSCRIU (%d): Sent the dump request to the listener\n", s_pid);
    if (FUNC6(iFdNative,
              &criu_native_dump,
              sizeof(criu_native_dump)) == -1) {
        FUNC1("LSCRIU (%d): Error sending dump request to the listener: %s\n",
                   s_pid, FUNC3(errno));
        return(-1);
    }
    return 0;
}