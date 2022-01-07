
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_internal {int num_vsync_samples; double* vsync_samples; } ;
struct vo {struct vo_internal* in; } ;
typedef double int64_t ;


 double sqrt (double) ;

__attribute__((used)) static double vsync_stddef(struct vo *vo, int64_t ref_vsync)
{
    struct vo_internal *in = vo->in;
    double jitter = 0;
    for (int n = 0; n < in->num_vsync_samples; n++) {
        double diff = in->vsync_samples[n] - ref_vsync;
        jitter += diff * diff;
    }
    return sqrt(jitter / in->num_vsync_samples);
}
