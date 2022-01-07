
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mp_aframe {int dummy; } ;


 int AF_FORMAT_DOUBLE ;
 int AF_FORMAT_FLOAT ;
 double MPCLAMP (double,double,double) ;
 int af_fmt_from_planar (int ) ;
 float av_clipf (float,float,float) ;
 int ** mp_aframe_get_data_rw (struct mp_aframe*) ;
 int mp_aframe_get_format (struct mp_aframe*) ;
 int mp_aframe_get_planes (struct mp_aframe*) ;
 int mp_aframe_get_total_plane_samples (struct mp_aframe*) ;

__attribute__((used)) static void extra_output_conversion(struct mp_aframe *mpa)
{
    int format = af_fmt_from_planar(mp_aframe_get_format(mpa));
    int num_planes = mp_aframe_get_planes(mpa);
    uint8_t **planes = mp_aframe_get_data_rw(mpa);
    if (!planes)
        return;
    for (int p = 0; p < num_planes; p++) {
        void *ptr = planes[p];
        int total = mp_aframe_get_total_plane_samples(mpa);
        if (format == AF_FORMAT_FLOAT) {
            for (int s = 0; s < total; s++)
                ((float *)ptr)[s] = av_clipf(((float *)ptr)[s], -1.0f, 1.0f);
        } else if (format == AF_FORMAT_DOUBLE) {
            for (int s = 0; s < total; s++)
                ((double *)ptr)[s] = MPCLAMP(((double *)ptr)[s], -1.0, 1.0);
        }
    }
}
