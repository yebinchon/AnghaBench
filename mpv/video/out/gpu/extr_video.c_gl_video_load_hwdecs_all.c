
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_hwdec_devices {int dummy; } ;
struct gl_video {int hwdec_interop_loading_done; } ;


 int load_add_hwdec (struct gl_video*,struct mp_hwdec_devices*,scalar_t__,int) ;
 scalar_t__* ra_hwdec_drivers ;

void gl_video_load_hwdecs_all(struct gl_video *p, struct mp_hwdec_devices *devs)
{
    if (!p->hwdec_interop_loading_done) {
        for (int n = 0; ra_hwdec_drivers[n]; n++)
            load_add_hwdec(p, devs, ra_hwdec_drivers[n], 1);
        p->hwdec_interop_loading_done = 1;
    }
}
