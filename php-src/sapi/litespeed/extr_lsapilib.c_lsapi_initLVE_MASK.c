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
 scalar_t__ FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ s_enable_lve ; 
 int /*<<< orphan*/  s_uid ; 

__attribute__((used)) static int FUNC4(void)
{
    const char * pEnv;
    if ( (pEnv = FUNC1( "LSAPI_LVE_ENABLE" ))!= NULL )
    {
        s_enable_lve = FUNC0( pEnv );
        pEnv = NULL;
    }
    else if ( (pEnv = FUNC1( "LVE_ENABLE" ))!= NULL )
    {
        s_enable_lve = FUNC0( pEnv );
        pEnv = NULL;
    }
    if ( s_enable_lve && !s_uid )
    {
        FUNC3();
        if ( s_enable_lve )
        {
            return FUNC2();
        }

    }
    return 0;
}