
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct track {TYPE_3__* stream; } ;
struct mp_image_params {scalar_t__ p_w; scalar_t__ p_h; } ;
struct mp_codec_params {float disp_h; scalar_t__ disp_w; } ;
struct m_property {scalar_t__ name; } ;
struct m_option {int dummy; } ;
struct m_config_option {struct m_option* opt; } ;
struct command_ctx {int num_warned_deprecated; int * warned_deprecated; } ;
struct TYPE_11__ {int mconfig; TYPE_4__* opts; struct track*** current_track; TYPE_2__* vo_chain; struct command_ctx* command_ctx; } ;
struct TYPE_10__ {float movie_aspect; } ;
struct TYPE_9__ {struct mp_codec_params* codec; } ;
struct TYPE_8__ {TYPE_1__* filter; } ;
struct TYPE_7__ {struct mp_image_params input_params; } ;
typedef TYPE_5__ MPContext ;


 int MP_TARRAY_APPEND (struct command_ctx*,int *,int,char*) ;
 int MP_WARN (TYPE_5__*,char*) ;
 int M_PROPERTY_ERROR ;


 int M_PROPERTY_NOT_IMPLEMENTED ;
 int M_PROPERTY_OK ;


 size_t STREAM_VIDEO ;
 int bstr0 (char*) ;
 struct m_config_option* m_config_get_co_raw (int ,int ) ;
 int m_config_set_option_raw_direct (int ,struct m_config_option*,void*,int ) ;
 int mp_image_params_get_dsize (struct mp_image_params*,int*,int*) ;
 scalar_t__ strcmp (int ,scalar_t__) ;
 char* talloc_asprintf (int *,char*,float) ;

__attribute__((used)) static int mp_property_aspect(void *ctx, struct m_property *prop,
                              int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct m_config_option *opt;
    opt = m_config_get_co_raw(mpctx->mconfig, bstr0("video-aspect-override"));

    struct command_ctx *cmd = mpctx->command_ctx;
    for (int n = 0; n < cmd->num_warned_deprecated; n++) {
        if (strcmp(cmd->warned_deprecated[n], prop->name) == 0)
            goto skip_warn;
    }

    MP_WARN(mpctx, "Warning: property 'video-aspect' is deprecated, refer to "
            "'video-params/aspect' and 'video-aspect-override'.\n");
    MP_TARRAY_APPEND(cmd, cmd->warned_deprecated, cmd->num_warned_deprecated,
                     (char *)prop->name);

skip_warn: ;

    float aspect = mpctx->opts->movie_aspect;
    if (mpctx->vo_chain && aspect <= 0) {
        struct mp_image_params *params = &mpctx->vo_chain->filter->input_params;
        if (params && params->p_w > 0 && params->p_h > 0) {
            int d_w, d_h;
            mp_image_params_get_dsize(params, &d_w, &d_h);
            aspect = (float)d_w / d_h;
        }
    }
    struct track *track = mpctx->current_track[0][STREAM_VIDEO];
    if (track && track->stream && aspect <= 0) {
        struct mp_codec_params *c = track->stream->codec;
        if (c->disp_w && c->disp_h)
            aspect = (float)c->disp_w / c->disp_h;
    }

    switch (action) {
    case 130:
        *(struct m_option *)arg = *(opt->opt);
        return M_PROPERTY_OK;
    case 129: {
        if (mpctx->opts->movie_aspect < 0) {
            *(char **)arg = talloc_asprintf(((void*)0), "%.3f (original)", aspect);
            return M_PROPERTY_OK;
        }
        break;
    }
    case 131: {
        *(float *)arg = aspect;
        return M_PROPERTY_OK;
    }
    case 128:
        if (m_config_set_option_raw_direct(mpctx->mconfig, opt, arg, 0) < 0)
            return M_PROPERTY_ERROR;
        return M_PROPERTY_OK;
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}
