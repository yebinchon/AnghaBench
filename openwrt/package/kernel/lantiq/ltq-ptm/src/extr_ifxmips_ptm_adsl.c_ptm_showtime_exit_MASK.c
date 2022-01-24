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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * g_net_dev ; 
 scalar_t__ g_showtime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
    int i;

    if ( !g_showtime )
        return -1;

    for ( i = 0; i < FUNC0(g_net_dev); i++ )
        FUNC1(g_net_dev[i]);

    g_showtime = 0;

    FUNC2("leave showtime\n");

    return 0;
}