
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gamma; scalar_t__ gamma_auto; } ;
struct gl_video {TYPE_1__ opts; } ;


 int MP_TRACE (struct gl_video*,char*,int,int ) ;
 int gl_video_scale_ambient_lux (double,double,double,double,int) ;

void gl_video_set_ambient_lux(struct gl_video *p, int lux)
{
    if (p->opts.gamma_auto) {
        p->opts.gamma = gl_video_scale_ambient_lux(16.0, 256.0, 1.0, 1.2, lux);
        MP_TRACE(p, "ambient light changed: %d lux (gamma: %f)\n", lux,
                 p->opts.gamma);
    }
}
