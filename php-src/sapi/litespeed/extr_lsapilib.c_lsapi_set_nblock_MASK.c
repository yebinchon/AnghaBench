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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static  int FUNC1( int fd, int nonblock )
{
    int val = FUNC0( fd, F_GETFL, 0 );
    if ( nonblock )
    {
        if (!( val & O_NONBLOCK ))
        {
            return FUNC0( fd, F_SETFL, val | O_NONBLOCK );
        }
    }
    else
    {
        if ( val & O_NONBLOCK )
        {
            return FUNC0( fd, F_SETFL, val &(~O_NONBLOCK) );
        }
    }
    return 0;
}