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
struct nn_dist_data {int /*<<< orphan*/  item; } ;
struct nn_dist {int /*<<< orphan*/  pipes; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (struct nn_dist *self, struct nn_dist_data *data)
{
    if (FUNC1 (&data->item)) {
        --self->count;
        FUNC0 (&self->pipes, &data->item);
    }
    FUNC2 (&data->item);
}