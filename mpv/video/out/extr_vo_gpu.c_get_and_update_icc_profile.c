
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpu_priv {int renderer; int events; TYPE_2__* ctx; } ;
typedef int bstr ;
struct TYPE_4__ {TYPE_1__* fns; } ;
struct TYPE_3__ {int (* control ) (TYPE_2__*,int *,int ,int *) ;} ;


 int MP_ERR (struct gpu_priv*,char*) ;
 int MP_VERBOSE (struct gpu_priv*,char*) ;
 int MP_WARN (struct gpu_priv*,char*) ;
 int VOCTRL_GET_ICC_PROFILE ;
 int VO_FALSE ;
 int VO_NOTAVAIL ;
 int VO_NOTIMPL ;
 int bstr0 (int *) ;
 scalar_t__ gl_video_icc_auto_enabled (int ) ;
 int gl_video_set_icc_profile (int ,int ) ;
 int stub1 (TYPE_2__*,int *,int ,int *) ;

__attribute__((used)) static void get_and_update_icc_profile(struct gpu_priv *p)
{
    if (gl_video_icc_auto_enabled(p->renderer)) {
        MP_VERBOSE(p, "Querying ICC profile...\n");
        bstr icc = bstr0(((void*)0));
        int r = p->ctx->fns->control(p->ctx, &p->events, VOCTRL_GET_ICC_PROFILE, &icc);

        if (r != VO_NOTAVAIL) {
            if (r == VO_FALSE) {
                MP_WARN(p, "Could not retrieve an ICC profile.\n");
            } else if (r == VO_NOTIMPL) {
                MP_ERR(p, "icc-profile-auto not implemented on this platform.\n");
            }

            gl_video_set_icc_profile(p->renderer, icc);
        }
    }
}
