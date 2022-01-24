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
struct filter_window {double (* weight ) (struct filter_window*,double) ;double blur; double taper; double radius; } ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (struct filter_window*,double) ; 

__attribute__((used)) static double FUNC2(struct filter_window *kernel, double x)
{
    if (!kernel->weight)
        return 1.0;

    // All windows are symmetric, this makes life easier
    x = FUNC0(x);

    // Stretch and taper the window size as needed
    x = kernel->blur > 0.0 ? x / kernel->blur : x;
    x = x <= kernel->taper ? 0.0 : (x - kernel->taper) / (1 - kernel->taper);

    if (x < kernel->radius)
        return kernel->weight(kernel, x);
    return 0.0;
}