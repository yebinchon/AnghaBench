
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vo {int dummy; } ;
struct mp_image_params {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_4__ {struct vo* video_out; } ;
typedef TYPE_1__ MPContext ;



 int M_PROPERTY_OK ;

 int VOCTRL_GET_UNFS_WINDOW_SIZE ;
 int VOCTRL_SET_UNFS_WINDOW_SIZE ;
 struct mp_image_params get_video_out_params (TYPE_1__*) ;
 int mp_image_params_get_dsize (struct mp_image_params*,int*,int*) ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 int vo_control (struct vo*,int ,int*) ;

__attribute__((used)) static int mp_property_window_scale(void *ctx, struct m_property *prop,
                                    int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct vo *vo = mpctx->video_out;
    if (!vo)
        goto generic;

    struct mp_image_params params = get_video_out_params(mpctx);
    int vid_w, vid_h;
    mp_image_params_get_dsize(&params, &vid_w, &vid_h);
    if (vid_w < 1 || vid_h < 1)
        goto generic;

    switch (action) {
    case 128: {
        double scale = *(double *)arg;
        int s[2] = {vid_w * scale, vid_h * scale};
        if (s[0] > 0 && s[1] > 0)
            vo_control(vo, VOCTRL_SET_UNFS_WINDOW_SIZE, s);
        goto generic;
    }
    case 129: {
        int s[2];
        if (vo_control(vo, VOCTRL_GET_UNFS_WINDOW_SIZE, s) <= 0 ||
            s[0] < 1 || s[1] < 1)
            goto generic;
        double xs = (double)s[0] / vid_w;
        double ys = (double)s[1] / vid_h;
        *(double *)arg = (xs + ys) / 2;
        return M_PROPERTY_OK;
    }
    }
generic:
    return mp_property_generic_option(mpctx, prop, action, arg);
}
