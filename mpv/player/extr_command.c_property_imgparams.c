
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_imgfmt_desc {int num_planes; int* bpp; int* xs; int* ys; int plane_bits; int flags; } ;
struct TYPE_2__ {double sig_peak; int light; int gamma; int primaries; int levels; int space; } ;
struct mp_image_params {int w; int h; double p_w; int rotate; int stereo3d; int chroma_location; TYPE_1__ color; scalar_t__ p_h; int imgfmt; } ;
struct m_sub_property {char* member_0; int unavailable; int member_1; } ;


 int MP_IMGFLAG_YUV_P ;
 int M_PROPERTY_UNAVAILABLE ;
 int SUB_PROP_FLOAT (double) ;
 int SUB_PROP_INT (int) ;
 int SUB_PROP_STR (int ) ;
 int m_opt_choice_str (int ,int ) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;
 int mp_chroma_names ;
 int mp_csp_levels_names ;
 int mp_csp_light_names ;
 int mp_csp_names ;
 int mp_csp_prim_names ;
 int mp_csp_trc_names ;
 int mp_image_params_get_dsize (struct mp_image_params*,int*,int*) ;
 struct mp_imgfmt_desc mp_imgfmt_get_desc (int ) ;
 int mp_imgfmt_to_name (int ) ;
 int mp_stereo3d_names ;

__attribute__((used)) static int property_imgparams(struct mp_image_params p, int action, void *arg)
{
    if (!p.imgfmt)
        return M_PROPERTY_UNAVAILABLE;

    int d_w, d_h;
    mp_image_params_get_dsize(&p, &d_w, &d_h);

    struct mp_imgfmt_desc desc = mp_imgfmt_get_desc(p.imgfmt);
    int bpp = 0;
    for (int i = 0; i < desc.num_planes; i++)
        bpp += desc.bpp[i] >> (desc.xs[i] + desc.ys[i]);

    struct m_sub_property props[] = {
        {"pixelformat", SUB_PROP_STR(mp_imgfmt_to_name(p.imgfmt))},
        {"average-bpp", SUB_PROP_INT(bpp),
                            .unavailable = !bpp},
        {"plane-depth", SUB_PROP_INT(desc.plane_bits),
                            .unavailable = !(desc.flags & MP_IMGFLAG_YUV_P)},
        {"w", SUB_PROP_INT(p.w)},
        {"h", SUB_PROP_INT(p.h)},
        {"dw", SUB_PROP_INT(d_w)},
        {"dh", SUB_PROP_INT(d_h)},
        {"aspect", SUB_PROP_FLOAT(d_w / (double)d_h)},
        {"par", SUB_PROP_FLOAT(p.p_w / (double)p.p_h)},
        {"colormatrix",
            SUB_PROP_STR(m_opt_choice_str(mp_csp_names, p.color.space))},
        {"colorlevels",
            SUB_PROP_STR(m_opt_choice_str(mp_csp_levels_names, p.color.levels))},
        {"primaries",
            SUB_PROP_STR(m_opt_choice_str(mp_csp_prim_names, p.color.primaries))},
        {"gamma",
            SUB_PROP_STR(m_opt_choice_str(mp_csp_trc_names, p.color.gamma))},
        {"sig-peak", SUB_PROP_FLOAT(p.color.sig_peak)},
        {"light",
            SUB_PROP_STR(m_opt_choice_str(mp_csp_light_names, p.color.light))},
        {"chroma-location",
            SUB_PROP_STR(m_opt_choice_str(mp_chroma_names, p.chroma_location))},
        {"stereo-in",
            SUB_PROP_STR(m_opt_choice_str(mp_stereo3d_names, p.stereo3d))},
        {"rotate", SUB_PROP_INT(p.rotate)},
        {0}
    };

    return m_property_read_sub(props, action, arg);
}
