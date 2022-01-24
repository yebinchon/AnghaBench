#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lwIP_netconn ;
struct TYPE_2__ {int /*<<< orphan*/ * conn; } ;

/* Variables and functions */
 int NUM_SOCKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* sockets ; 

__attribute__((used)) static int FUNC1(lwIP_netconn *newconn)
{
    int i = 0;
    FUNC0(newconn);
    for (i = 0; i < NUM_SOCKETS; ++i)
    {
        if (sockets[i].conn && sockets[i].conn == newconn)
            return i;
    }
    return -1;
}