
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_window {double (* weight ) (struct filter_window*,double) ;double blur; double taper; double radius; } ;


 double fabs (double) ;
 double stub1 (struct filter_window*,double) ;

__attribute__((used)) static double sample_window(struct filter_window *kernel, double x)
{
    if (!kernel->weight)
        return 1.0;


    x = fabs(x);


    x = kernel->blur > 0.0 ? x / kernel->blur : x;
    x = x <= kernel->taper ? 0.0 : (x - kernel->taper) / (1 - kernel->taper);

    if (x < kernel->radius)
        return kernel->weight(kernel, x);
    return 0.0;
}
