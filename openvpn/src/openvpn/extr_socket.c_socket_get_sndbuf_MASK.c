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
typedef  int /*<<< orphan*/  val ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*) ; 

__attribute__((used)) static int
FUNC1(int sd)
{
#if defined(HAVE_GETSOCKOPT) && defined(SOL_SOCKET) && defined(SO_SNDBUF)
    int val;
    socklen_t len;

    len = sizeof(val);
    if (getsockopt(sd, SOL_SOCKET, SO_SNDBUF, (void *) &val, &len) == 0
        && len == sizeof(val))
    {
        return val;
    }
#endif
    return 0;
}