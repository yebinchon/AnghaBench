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
struct mp_image_params {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  imgfmt; } ;
struct mp_image {struct mp_image_params params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,int /*<<< orphan*/ ) ; 

void FUNC2(struct mp_image *image,
                         const struct mp_image_params *params)
{
    // possibly initialize other stuff
    FUNC1(image, params->imgfmt);
    FUNC0(image, params->w, params->h);
    image->params = *params;
}