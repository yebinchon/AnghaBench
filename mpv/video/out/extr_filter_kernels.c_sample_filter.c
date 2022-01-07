
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double radius; } ;
struct filter_kernel {int clamp; TYPE_1__ f; TYPE_1__ w; } ;


 double sample_window (TYPE_1__*,double) ;

__attribute__((used)) static double sample_filter(struct filter_kernel *filter, double x)
{

    double w = sample_window(&filter->w, x / filter->f.radius * filter->w.radius);
    double k = w * sample_window(&filter->f, x);
    return k < 0 ? (1 - filter->clamp) * k : k;
}
