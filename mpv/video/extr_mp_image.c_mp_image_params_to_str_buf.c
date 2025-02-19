
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sig_peak; int light; int levels; int gamma; int primaries; int space; } ;
struct mp_image_params {int w; int h; scalar_t__ p_w; scalar_t__ p_h; scalar_t__ stereo3d; scalar_t__ rotate; int chroma_location; TYPE_1__ color; scalar_t__ hw_subfmt; scalar_t__ imgfmt; } ;


 scalar_t__ MP_STEREO3D_NAME_DEF (scalar_t__,char*) ;
 scalar_t__ m_opt_choice_str (int ,int ) ;
 int mp_chroma_names ;
 int mp_csp_levels_names ;
 int mp_csp_light_names ;
 int mp_csp_names ;
 int mp_csp_prim_names ;
 int mp_csp_trc_names ;
 scalar_t__ mp_imgfmt_to_name (scalar_t__) ;
 int mp_snprintf_cat (char*,size_t,char*,scalar_t__,...) ;
 int snprintf (char*,size_t,char*,...) ;

char *mp_image_params_to_str_buf(char *b, size_t bs,
                                 const struct mp_image_params *p)
{
    if (p && p->imgfmt) {
        snprintf(b, bs, "%dx%d", p->w, p->h);
        if (p->p_w != p->p_h || !p->p_w)
            mp_snprintf_cat(b, bs, " [%d:%d]", p->p_w, p->p_h);
        mp_snprintf_cat(b, bs, " %s", mp_imgfmt_to_name(p->imgfmt));
        if (p->hw_subfmt)
            mp_snprintf_cat(b, bs, "[%s]", mp_imgfmt_to_name(p->hw_subfmt));
        mp_snprintf_cat(b, bs, " %s/%s/%s/%s/%s",
                        m_opt_choice_str(mp_csp_names, p->color.space),
                        m_opt_choice_str(mp_csp_prim_names, p->color.primaries),
                        m_opt_choice_str(mp_csp_trc_names, p->color.gamma),
                        m_opt_choice_str(mp_csp_levels_names, p->color.levels),
                        m_opt_choice_str(mp_csp_light_names, p->color.light));
        if (p->color.sig_peak)
            mp_snprintf_cat(b, bs, " SP=%f", p->color.sig_peak);
        mp_snprintf_cat(b, bs, " CL=%s",
                        m_opt_choice_str(mp_chroma_names, p->chroma_location));
        if (p->rotate)
            mp_snprintf_cat(b, bs, " rot=%d", p->rotate);
        if (p->stereo3d > 0) {
            mp_snprintf_cat(b, bs, " stereo=%s",
                            MP_STEREO3D_NAME_DEF(p->stereo3d, "?"));
        }
    } else {
        snprintf(b, bs, "???");
    }
    return b;
}
