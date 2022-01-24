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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LSAPI_SOCK_FILENO ; 
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGXFSZ ; 
 int /*<<< orphan*/  SIG_IGN ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int g_inited ; 
 int /*<<< orphan*/  g_req ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lsapi_sigpipe ; 
 int /*<<< orphan*/  lsapi_siguser1 ; 
 int /*<<< orphan*/  pthread_atfork_func ; 
 int /*<<< orphan*/  s_ppid ; 
 scalar_t__* s_secret ; 
 int /*<<< orphan*/  s_uid ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(void)
{
    if ( !g_inited )
    {
        s_uid = FUNC4();
        s_secret[0] = 0;
        FUNC6(SIGPIPE, lsapi_sigpipe);
        FUNC6(SIGUSR1, lsapi_siguser1);

#if defined(SIGXFSZ) && defined(SIG_IGN)
        signal(SIGXFSZ, SIG_IGN);
#endif
        /* let STDOUT function as STDERR,
           just in case writing to STDOUT directly */
        FUNC3( 2, 1 );
        if ( FUNC0( &g_req, LSAPI_SOCK_FILENO ) == -1 )
            return -1;
        g_inited = 1;
        s_ppid = FUNC5();
        void *pthread_lib = FUNC1("libpthread.so", RTLD_LAZY);
        if (pthread_lib)
            pthread_atfork_func = FUNC2(pthread_lib, "pthread_atfork");

    }
    return 0;
}