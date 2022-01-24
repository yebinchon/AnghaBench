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
typedef  scalar_t__ GlobalCounterType_t ;

/* Variables and functions */
 scalar_t__ CRIU_GCOUNTER_PIPE ; 
 scalar_t__ CRIU_GCOUNTER_SHM ; 
 scalar_t__ CRIU_GCOUNTER_SIG ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int FUNC3 (char const*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lsapi_siguser2 ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int s_native ; 

__attribute__((used)) static int FUNC9(void)
{
    const char *p;
    int n;

    p = FUNC4("LSAPI_INITIAL_START");
    if (!p)
        p = FUNC4("LSAPI_BACKEND_INITIAL_START");
    if (p) {
        n = FUNC3(p);

        if (n > 0) {
            FUNC8("LSCRIU (%d): Set start requests based on environment (%d)\n",
                       FUNC5(), n);
            FUNC2(n);
        } else {
            FUNC8("LSCRIU (%d): LSAPI_INITIAL_START set to 0 disabled\n",
                       FUNC5());
            return 0;
        }
    } else {
        FUNC8("LSCRIU (%d): LSAPI_INITIAL_START NOT set - disabled\n",
                   FUNC5());
        return 0;
    }
    if (FUNC0()) {
        FUNC8("LSCRIU (%d): Listening...\n", FUNC5());
        GlobalCounterType_t gc_type = CRIU_GCOUNTER_SHM;
        char *env;
        if ((env = FUNC4("LSAPI_CRIU_USE_SHM"))) {
            // CloudLinux doc: Off (shared memory) or Signals.
            // Litespeed doc: On (shared memory) or Signals
            // So just check the first character for an 'S' and if not, then
            // use shared memory.  Pipe support is lost (sigh).
            if ((*env == 'S') || (*env == 's'))
                gc_type = CRIU_GCOUNTER_SIG; // Just assume the rest is signals
            // else use the default of shared memory
        }
        else if ((env = FUNC4("LSAPI_SIGNALS"))) {
            if ((*env == '1') ||
                (*env == 'Y') ||
                (*env == 'y') ||
                (*env == 'T') ||
                (*env == 't') ||
                (((*env == 'O') || (*env == 'o')) &&
                 ((*(env + 1) == 'N') || (*(env + 1) == 'n'))))
                gc_type = CRIU_GCOUNTER_SIG;
            else if (*env == 2)
                gc_type = CRIU_GCOUNTER_PIPE; // The only case for pipe
            //else use the default of shared memory
        }
        if (gc_type != CRIU_GCOUNTER_SHM) {
            FUNC8("LSCRIU (%d): Use %s\n", FUNC5(),
                       gc_type == CRIU_GCOUNTER_SIG ? "signals" : "pipe");
            FUNC7(SIGUSR2, lsapi_siguser2);
        }
        else
            FUNC8("LSCRIU (%d): Use shared memory\n", FUNC5());
        FUNC1(gc_type);
    }
    else
        FUNC8("LSCRIU (%d): NOT Listening\n", FUNC5());

    char *criu_mode = NULL;
    criu_mode = FUNC4("LSAPI_CRIU");
    // 0 disabled
    // 1 cloudlinux
    // 2 native
    if (criu_mode) {
        if (*criu_mode == '0') {
             FUNC8("LSCRIU (%d): Disabled by environment.\n", FUNC5());
             FUNC2(0);
        }
        else if (*criu_mode == '2') {
            FUNC8("LSCRIU (%d): Disabled by environment.\n", FUNC5());
            s_native = 1;
        }
    }

    if (s_native && FUNC6() == -1)
        FUNC2(0);

    //unset_lsapi_envs();
    return 0;
}