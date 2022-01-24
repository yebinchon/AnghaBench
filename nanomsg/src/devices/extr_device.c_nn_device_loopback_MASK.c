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
struct nn_device_recipe {int dummy; } ;
typedef  int /*<<< orphan*/  op ;

/* Variables and functions */
 int AF_SP_RAW ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  NN_DOMAIN ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nn_device_recipe*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4 (struct nn_device_recipe *device, int s)
{
    int rc;
    int op;
    size_t opsz;

    /*  Check whether the socket is a "raw" socket. */
    opsz = sizeof (op);
    rc = FUNC2 (s, NN_SOL_SOCKET, NN_DOMAIN, &op, &opsz);
    if (FUNC3 (rc != 0))
        return -1;
    FUNC0 (opsz == sizeof (op));
    if (op != AF_SP_RAW) {
        errno = EINVAL;
        return -1;
    }

    for (;;) {
        rc = FUNC1 (device, s, s, 0);
        if (FUNC3 (rc < 0))
            return -1;
    }
}