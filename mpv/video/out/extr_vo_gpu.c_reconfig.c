
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {struct gpu_priv* priv; } ;
struct mp_image_params {int dummy; } ;
struct gpu_priv {int renderer; TYPE_2__* ctx; } ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int (* reconfig ) (TYPE_2__*) ;} ;


 int gl_video_config (int ,struct mp_image_params*) ;
 int resize (struct vo*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *params)
{
    struct gpu_priv *p = vo->priv;

    if (!p->ctx->fns->reconfig(p->ctx))
        return -1;

    resize(vo);
    gl_video_config(p->renderer, params);

    return 0;
}
