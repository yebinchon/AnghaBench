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
struct mp_image_params {int /*<<< orphan*/  color; } ;
struct mp_csp_params {int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_image_params*) ; 

void FUNC1(struct mp_csp_params *params,
                             const struct mp_image_params *imgparams)
{
    struct mp_image_params p = *imgparams;
    FUNC0(&p); // ensure consistency
    params->color = p.color;
}