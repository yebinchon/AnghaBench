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
struct nn_sock {int dummy; } ;
struct TYPE_2__ {struct nn_sock** socks; } ;

/* Variables and functions */
 int EBADF ; 
 int NN_MAX_SOCKETS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nn_sock*) ; 
 TYPE_1__ self ; 

int FUNC2(struct nn_sock **sockp, int s)
{
    struct nn_sock *sock;

    if (FUNC0 (s < 0 || s >= NN_MAX_SOCKETS || self.socks == NULL))
        return -EBADF;

    sock = self.socks[s];
    if (FUNC0 (sock == NULL)) {
        return -EBADF;
    }

    if (FUNC0 (FUNC1 (sock) != 0)) {
        return -EBADF;
    }
    *sockp = sock;
    return 0;
}