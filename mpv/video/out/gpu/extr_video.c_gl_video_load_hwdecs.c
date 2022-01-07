
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec_driver {char* name; } ;
struct mp_hwdec_devices {int dummy; } ;
struct TYPE_2__ {char* hwdec_interop; } ;
struct gl_video {int hwdec_interop_loading_done; TYPE_1__ opts; } ;


 int gl_video_load_hwdecs_all (struct gl_video*,struct mp_hwdec_devices*) ;
 int load_add_hwdec (struct gl_video*,struct mp_hwdec_devices*,struct ra_hwdec_driver const*,int) ;
 struct ra_hwdec_driver** ra_hwdec_drivers ;
 scalar_t__ strcmp (char*,char*) ;

void gl_video_load_hwdecs(struct gl_video *p, struct mp_hwdec_devices *devs,
                          bool load_all_by_default)
{
    char *type = p->opts.hwdec_interop;
    if (!type || !type[0] || strcmp(type, "auto") == 0) {
        if (!load_all_by_default)
            return;
        type = "all";
    }
    if (strcmp(type, "no") == 0) {

    } else if (strcmp(type, "all") == 0) {
        gl_video_load_hwdecs_all(p, devs);
    } else {
        for (int n = 0; ra_hwdec_drivers[n]; n++) {
            const struct ra_hwdec_driver *drv = ra_hwdec_drivers[n];
            if (strcmp(type, drv->name) == 0) {
                load_add_hwdec(p, devs, drv, 0);
                break;
            }
        }
    }
    p->hwdec_interop_loading_done = 1;
}
