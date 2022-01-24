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
struct ra_hwdec_mapper {int /*<<< orphan*/  src; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmap ) (struct ra_hwdec_mapper*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec_mapper*) ; 

void FUNC2(struct ra_hwdec_mapper *mapper)
{
    if (mapper->driver->unmap)
        mapper->driver->unmap(mapper);
    FUNC0(&mapper->src);
}