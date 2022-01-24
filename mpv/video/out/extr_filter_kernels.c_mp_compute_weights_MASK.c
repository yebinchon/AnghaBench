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
struct filter_kernel {scalar_t__ size; double filter_scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FUNC1 (struct filter_kernel*,double) ; 

__attribute__((used)) static void FUNC2(struct filter_kernel *filter, double f,
                               float *out_w)
{
    FUNC0(filter->size > 0);
    double sum = 0;
    for (int n = 0; n < filter->size; n++) {
        double x = f - (n - filter->size / 2 + 1);
        double w = FUNC1(filter, x / filter->filter_scale);
        out_w[n] = w;
        sum += w;
    }
    // Normalize to preserve energy
    for (int n = 0; n < filter->size; n++)
        out_w[n] /= sum;
}