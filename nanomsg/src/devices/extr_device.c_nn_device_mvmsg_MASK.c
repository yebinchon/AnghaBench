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
struct nn_msghdr {int msg_iovlen; void** msg_control; void* msg_controllen; struct nn_iovec* msg_iov; } ;
struct nn_iovec {void** iov_base; void* iov_len; } ;
struct nn_device_recipe {int (* nn_device_rewritemsg ) (struct nn_device_recipe*,int,int,int,struct nn_msghdr*,int) ;} ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 void* NN_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct nn_msghdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct nn_msghdr*,int) ; 
 int FUNC3 (int,struct nn_msghdr*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct nn_device_recipe*,int,int,int,struct nn_msghdr*,int) ; 

int FUNC6 (struct nn_device_recipe *device,
    int from, int to, int flags)
{
    int rc;
    void *body;
    void *control;
    struct nn_iovec iov;
    struct nn_msghdr hdr;

    iov.iov_base = &body;
    iov.iov_len = NN_MSG;
    FUNC0 (&hdr, 0, sizeof (hdr));
    hdr.msg_iov = &iov;
    hdr.msg_iovlen = 1;
    hdr.msg_control = &control;
    hdr.msg_controllen = NN_MSG;
    rc = FUNC2 (from, &hdr, flags);
    if (FUNC4 (rc < 0)) {
        /* any error is fatal */
        return -1;
    }

    rc = device->nn_device_rewritemsg (device, from, to, flags, &hdr, rc);
    if (FUNC4 (rc == -1))
        return -1;
    else if (rc == 0)
        return 0;
    FUNC1(rc == 1);

    rc = FUNC3 (to, &hdr, flags);
    if (FUNC4 (rc < 0)) {
        /* any error is fatal */
        return -1;
    }
    return 0;
}