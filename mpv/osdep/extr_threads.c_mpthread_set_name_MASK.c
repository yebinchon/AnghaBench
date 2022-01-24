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
typedef  int /*<<< orphan*/  tname ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 

void FUNC4(const char *name)
{
    char tname[80];
    FUNC3(tname, sizeof(tname), "mpv/%s", name);
#if HAVE_GLIBC_THREAD_NAME
    if (pthread_setname_np(pthread_self(), tname) == ERANGE) {
        tname[15] = '\0'; // glibc-checked kernel limit
        pthread_setname_np(pthread_self(), tname);
    }
#elif HAVE_WIN32_INTERNAL_PTHREADS || HAVE_BSD_THREAD_NAME
    pthread_set_name_np(pthread_self(), tname);
#elif HAVE_OSX_THREAD_NAME
    pthread_setname_np(tname);
#endif
}