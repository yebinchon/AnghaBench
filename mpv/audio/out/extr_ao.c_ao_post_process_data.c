
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct ao {TYPE_1__ channels; int format; } ;


 int af_fmt_is_planar (int ) ;
 int process_plane (struct ao*,void*,int) ;

void ao_post_process_data(struct ao *ao, void **data, int num_samples)
{
    bool planar = af_fmt_is_planar(ao->format);
    int planes = planar ? ao->channels.num : 1;
    int plane_samples = num_samples * (planar ? 1: ao->channels.num);
    for (int n = 0; n < planes; n++)
        process_plane(ao, data[n], plane_samples);
}
