
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpu_priv {int renderer; int events; TYPE_2__* ctx; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int (* control ) (TYPE_2__*,int *,int ,int*) ;} ;


 int MP_ERR (struct gpu_priv*,char*) ;
 int VOCTRL_GET_AMBIENT_LUX ;
 int VO_TRUE ;
 scalar_t__ gl_video_gamma_auto_enabled (int ) ;
 int gl_video_set_ambient_lux (int ,int) ;
 int stub1 (TYPE_2__*,int *,int ,int*) ;

__attribute__((used)) static void get_and_update_ambient_lighting(struct gpu_priv *p)
{
    int lux;
    int r = p->ctx->fns->control(p->ctx, &p->events, VOCTRL_GET_AMBIENT_LUX, &lux);
    if (r == VO_TRUE) {
        gl_video_set_ambient_lux(p->renderer, lux);
    }
    if (r != VO_TRUE && gl_video_gamma_auto_enabled(p->renderer)) {
        MP_ERR(p, "gamma_auto option provided, but querying for ambient"
                  " lighting is not supported on this platform\n");
    }
}
