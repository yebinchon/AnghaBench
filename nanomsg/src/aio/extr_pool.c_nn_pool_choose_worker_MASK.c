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
struct nn_worker {int dummy; } ;
struct nn_pool {struct nn_worker worker; } ;

/* Variables and functions */

struct nn_worker *FUNC0 (struct nn_pool *self)
{
    return &self->worker;
}