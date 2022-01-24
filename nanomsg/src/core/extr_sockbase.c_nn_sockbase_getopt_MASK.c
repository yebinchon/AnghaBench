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
struct nn_sockbase {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,size_t*) ; 

int FUNC1 (struct nn_sockbase *self, int option,
    void *optval, size_t *optvallen)
{
    return FUNC0 (self->sock, NN_SOL_SOCKET, option,
        optval, optvallen);
}