
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int radius; } ;
struct filter_kernel {double radius_cutoff; scalar_t__ value_cutoff; TYPE_1__ f; scalar_t__ polar; } ;


 scalar_t__ fabs (float) ;
 int mp_compute_weights (struct filter_kernel*,int,float*) ;
 float sample_filter (struct filter_kernel*,double) ;

void mp_compute_lut(struct filter_kernel *filter, int count, int stride,
                    float *out_array)
{
    if (filter->polar) {
        filter->radius_cutoff = 0.0;

        for (int x = 0; x < count; x++) {
            double r = x * filter->f.radius / (count - 1);
            out_array[x] = sample_filter(filter, r);

            if (fabs(out_array[x]) > filter->value_cutoff)
                filter->radius_cutoff = r;
        }
    } else {

        for (int n = 0; n < count; n++) {
            mp_compute_weights(filter, n / (double)(count - 1),
                               out_array + stride * n);
        }
    }
}
