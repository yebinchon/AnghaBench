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
 scalar_t__ EINTR ; 
 int FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ g_running ; 

__attribute__((used)) static int FUNC1( int fd )
{
    int ret;
    while( 1 )
    {
        ret = FUNC0( fd );
        if (( ret == -1 )&&( errno == EINTR )&&(g_running))
            continue;
        return ret;
    }
}