
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct track {struct mp_decoder_wrapper* dec; } ;
struct mp_decoder_wrapper {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_4__ {double last_vo_pts; struct track*** current_track; } ;
typedef TYPE_1__ MPContext ;


 int MPSEEK_ABSOLUTE ;
 int MPSEEK_EXACT ;
 double MP_NOPTS_VALUE ;
 int M_PROPERTY_GET ;
 int M_PROPERTY_OK ;
 int M_PROPERTY_SET ;
 size_t STREAM_VIDEO ;
 int VDCTRL_REINIT ;
 int bstr0 (char*) ;
 int bstr_equals (int ,int ) ;
 int mp_decoder_wrapper_control (struct mp_decoder_wrapper*,int ,int *) ;
 int mp_property_generic_option (TYPE_1__*,struct m_property*,int,void*) ;
 int queue_seek (TYPE_1__*,int ,double,int ,int ) ;
 int talloc_free (char*) ;

__attribute__((used)) static int mp_property_hwdec(void *ctx, struct m_property *prop,
                             int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct track *track = mpctx->current_track[0][STREAM_VIDEO];
    struct mp_decoder_wrapper *dec = track ? track->dec : ((void*)0);

    if (action == M_PROPERTY_SET) {
        char *new = *(char **)arg;
        char *old = ((void*)0);
        if (mp_property_generic_option(mpctx, prop, M_PROPERTY_GET, &old) < 1)
            old = ((void*)0);

        bool same = bstr_equals(bstr0(old), bstr0(new));

        mp_property_generic_option(mpctx, prop, M_PROPERTY_SET, &new);

        talloc_free(old);

        if (!dec || same)
            return M_PROPERTY_OK;

        mp_decoder_wrapper_control(dec, VDCTRL_REINIT, ((void*)0));
        double last_pts = mpctx->last_vo_pts;
        if (last_pts != MP_NOPTS_VALUE)
            queue_seek(mpctx, MPSEEK_ABSOLUTE, last_pts, MPSEEK_EXACT, 0);

        return M_PROPERTY_OK;
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
