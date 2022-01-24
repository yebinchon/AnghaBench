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
struct ra_hwdec_mapper {int dummy; } ;
struct ra_hwdec {int dummy; } ;
struct mp_image {int /*<<< orphan*/  params; } ;

/* Variables and functions */
 struct ra_hwdec_mapper* FUNC0 (struct ra_hwdec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_hwdec_mapper**) ; 
 scalar_t__ FUNC2 (struct ra_hwdec_mapper*,struct mp_image*) ; 

__attribute__((used)) static bool FUNC3(struct ra_hwdec *hw, struct mp_image *surface)
{
    bool ok = false;
    struct ra_hwdec_mapper *mapper = FUNC0(hw, &surface->params);
    if (mapper)
        ok = FUNC2(mapper, surface) >= 0;
    FUNC1(&mapper);
    return ok;
}