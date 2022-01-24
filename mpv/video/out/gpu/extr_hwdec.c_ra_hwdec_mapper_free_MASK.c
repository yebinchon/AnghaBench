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
struct ra_hwdec_mapper {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* uninit ) (struct ra_hwdec_mapper*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra_hwdec_mapper*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec_mapper*) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_hwdec_mapper*) ; 

void FUNC3(struct ra_hwdec_mapper **mapper)
{
    struct ra_hwdec_mapper *p = *mapper;
    if (p) {
        FUNC0(p);
        p->driver->uninit(p);
        FUNC2(p);
    }
    *mapper = NULL;
}