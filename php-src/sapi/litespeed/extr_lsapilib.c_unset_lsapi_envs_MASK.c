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
 char*** FUNC0 () ; 
 char** environ ; 
 int /*<<< orphan*/  s_uid ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
    char **env;
#if defined(macintosh) || defined(__APPLE__) || defined(__APPLE_CC__)
    env = *_NSGetEnviron();
#else
    env = environ;
#endif
    while( env != NULL && *env != NULL )
    {
        if (!FUNC1(*env, "LSAPI_", 6) || !FUNC1( *env, "PHP_LSAPI_", 10 )
            || (!FUNC1( *env, "PHPRC=", 6 )&&(!s_uid)))
        {
            char ** del = env;
            do
                *del = del[1];
            while( *del++ );
        }
        else
            ++env;
    }
}