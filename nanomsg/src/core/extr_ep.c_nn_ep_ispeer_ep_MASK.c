#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nn_ep {TYPE_2__* sock; } ;
struct TYPE_4__ {TYPE_1__* socktype; } ;
struct TYPE_3__ {int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int FUNC0 (struct nn_ep*,int /*<<< orphan*/ ) ; 

int FUNC1 (struct nn_ep *self, struct nn_ep *other)
{
    return FUNC0 (self, other->sock->socktype->protocol);
}