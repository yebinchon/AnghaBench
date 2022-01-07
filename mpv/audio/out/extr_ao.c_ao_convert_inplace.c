
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_convert_fmt {int channels; int src_fmt; } ;


 int af_fmt_is_planar (int ) ;
 int convert_plane (int,void*,int) ;
 int get_conv_type (struct ao_convert_fmt*) ;

void ao_convert_inplace(struct ao_convert_fmt *fmt, void **data, int num_samples)
{
    int type = get_conv_type(fmt);
    bool planar = af_fmt_is_planar(fmt->src_fmt);
    int planes = planar ? fmt->channels : 1;
    int plane_samples = num_samples * (planar ? 1: fmt->channels);
    for (int n = 0; n < planes; n++)
        convert_plane(type, data[n], plane_samples);
}
