
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vo {int dummy; } ;
struct TYPE_7__ {TYPE_4__* scaler; scalar_t__ interpolation; } ;
struct gl_video {TYPE_3__ opts; } ;
struct TYPE_5__ {double radius; } ;
struct filter_kernel {TYPE_1__ f; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_8__ {double radius; TYPE_2__ kernel; } ;


 size_t SCALER_TSCALE ;
 scalar_t__ ceil (double) ;
 int gl_video_update_options (struct gl_video*) ;
 struct filter_kernel* mp_find_filter_kernel (int ) ;
 int vo_set_queue_params (struct vo*,int ,int) ;

void gl_video_configure_queue(struct gl_video *p, struct vo *vo)
{
    gl_video_update_options(p);

    int queue_size = 1;



    if (p->opts.interpolation) {
        const struct filter_kernel *kernel =
            mp_find_filter_kernel(p->opts.scaler[SCALER_TSCALE].kernel.name);
        if (kernel) {



            double radius = kernel->f.radius;
            radius = radius > 0 ? radius : p->opts.scaler[SCALER_TSCALE].radius;
            queue_size += 1 + ceil(radius);
        } else {

            queue_size += 2;
        }
    }

    vo_set_queue_params(vo, 0, queue_size);
}
