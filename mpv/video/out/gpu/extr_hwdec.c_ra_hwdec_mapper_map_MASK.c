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
struct ra_hwdec_mapper {TYPE_1__* driver; int /*<<< orphan*/  src; } ;
struct mp_image {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* map ) (struct ra_hwdec_mapper*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec_mapper*) ; 
 scalar_t__ FUNC2 (struct ra_hwdec_mapper*) ; 

int FUNC3(struct ra_hwdec_mapper *mapper, struct mp_image *img)
{
    FUNC1(mapper);
    FUNC0(&mapper->src, img);
    if (mapper->driver->map(mapper) < 0) {
        FUNC1(mapper);
        return -1;
    }
    return 0;
}