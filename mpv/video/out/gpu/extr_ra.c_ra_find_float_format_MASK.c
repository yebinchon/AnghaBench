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
struct ra_format {scalar_t__ ctype; int num_components; int pixel_size; int* component_depth; scalar_t__ linear_filter; } ;
struct ra {int num_formats; struct ra_format** formats; } ;

/* Variables and functions */
 scalar_t__ RA_CTYPE_FLOAT ; 
 scalar_t__ FUNC0 (struct ra_format const*) ; 

__attribute__((used)) static const struct ra_format *FUNC1(struct ra *ra,
                                                    int bytes_per_component,
                                                    int n_components)
{
    // Assumes ra_format are ordered by performance.
    // The >=16 check is to avoid catching fringe formats.
    for (int n = 0; n < ra->num_formats; n++) {
        const struct ra_format *fmt = ra->formats[n];
        if (fmt->ctype == RA_CTYPE_FLOAT && fmt->num_components == n_components &&
            fmt->pixel_size == bytes_per_component * n_components &&
            fmt->component_depth[0] >= 16 &&
            fmt->linear_filter && FUNC0(fmt))
            return fmt;
    }
    return NULL;
}