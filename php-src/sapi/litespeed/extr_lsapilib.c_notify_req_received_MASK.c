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
 int FUNC0 () ; 
 scalar_t__ s_schedule_notify ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2( int fd )
{
    if ( s_schedule_notify )
        return FUNC0();
    return FUNC1( fd );

}