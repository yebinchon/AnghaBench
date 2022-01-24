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
struct TYPE_2__ {int radius; } ;
struct filter_kernel {double radius_cutoff; scalar_t__ value_cutoff; TYPE_1__ f; scalar_t__ polar; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_kernel*,int,float*) ; 
 float FUNC2 (struct filter_kernel*,double) ; 

void FUNC3(struct filter_kernel *filter, int count, int stride,
                    float *out_array)
{
    if (filter->polar) {
        filter->radius_cutoff = 0.0;
        // Compute a 1D array indexed by radius
        for (int x = 0; x < count; x++) {
            double r = x * filter->f.radius / (count - 1);
            out_array[x] = FUNC2(filter, r);

            if (FUNC0(out_array[x]) > filter->value_cutoff)
                filter->radius_cutoff = r;
        }
    } else {
        // Compute a 2D array indexed by subpixel position
        for (int n = 0; n < count; n++) {
            FUNC1(filter, n / (double)(count - 1),
                               out_array + stride * n);
        }
    }
}