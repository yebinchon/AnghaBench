
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_kernel {scalar_t__ size; double filter_scale; } ;


 int assert (int) ;
 double sample_filter (struct filter_kernel*,double) ;

__attribute__((used)) static void mp_compute_weights(struct filter_kernel *filter, double f,
                               float *out_w)
{
    assert(filter->size > 0);
    double sum = 0;
    for (int n = 0; n < filter->size; n++) {
        double x = f - (n - filter->size / 2 + 1);
        double w = sample_filter(filter, x / filter->filter_scale);
        out_w[n] = w;
        sum += w;
    }

    for (int n = 0; n < filter->size; n++)
        out_w[n] /= sum;
}
