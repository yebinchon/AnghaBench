
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mp_imgfmt_desc {int flags; scalar_t__ num_planes; int plane_bits; } ;
struct TYPE_4__ {scalar_t__ opt_only_8bit; scalar_t__ opt_disable_shaders; } ;
typedef TYPE_1__ d3d_priv ;
typedef scalar_t__ D3DFORMAT ;


 int IMGFMT_Y16 ;
 int IMGFMT_Y8 ;
 int MP_IMGFLAG_NE ;
 int MP_IMGFLAG_YUV_P ;
 scalar_t__ MP_MAX_PLANES ;
 int SHADER_420P ;
 scalar_t__ check_format (TYPE_1__*,int,int) ;
 struct mp_imgfmt_desc mp_imgfmt_get_desc (int ) ;

__attribute__((used)) static int check_shader_conversion(d3d_priv *priv, uint32_t fmt,
                                   D3DFORMAT shader_d3dfmts[MP_MAX_PLANES])
{
    if (priv->opt_disable_shaders)
        return 0;
    struct mp_imgfmt_desc desc = mp_imgfmt_get_desc(fmt);
    if ((desc.flags & MP_IMGFLAG_YUV_P) && (desc.flags & MP_IMGFLAG_NE)) {
        if (desc.num_planes > MP_MAX_PLANES)
            return 0;
        int component_bits = desc.plane_bits;
        if (component_bits < 8 || component_bits > 16)
            return 0;
        bool is_8bit = component_bits == 8;
        if (!is_8bit && priv->opt_only_8bit)
            return 0;
        int texfmt = is_8bit ? IMGFMT_Y8 : IMGFMT_Y16;
        D3DFORMAT d3dfmt = check_format(priv, texfmt, 1);
        if (d3dfmt) {
            for (int n = 0; n < desc.num_planes; n++)
                shader_d3dfmts[n] = d3dfmt;
            return SHADER_420P;
        }
    }
    return 0;
}
