
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color_fixup_masks {int sign; int source; int member_1; int member_0; } ;
struct color_fixup_desc {scalar_t__ x_source; scalar_t__ y_source; scalar_t__ z_source; scalar_t__ w_source; scalar_t__ w_sign_fixup; scalar_t__ z_sign_fixup; scalar_t__ y_sign_fixup; scalar_t__ x_sign_fixup; } ;
typedef enum complex_fixup { ____Placeholder_complex_fixup } complex_fixup ;
typedef int DWORD ;


 scalar_t__ CHANNEL_SOURCE_W ;
 scalar_t__ CHANNEL_SOURCE_X ;
 scalar_t__ CHANNEL_SOURCE_Y ;
 scalar_t__ CHANNEL_SOURCE_Z ;
 int FIXME (char*,int) ;
 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int WINED3DSP_WRITEMASK_2 ;
 int WINED3DSP_WRITEMASK_3 ;
 int get_complex_fixup (struct color_fixup_desc) ;
 scalar_t__ is_complex_fixup (struct color_fixup_desc) ;

__attribute__((used)) static struct color_fixup_masks calc_color_correction(struct color_fixup_desc fixup, DWORD dst_mask)
{
    struct color_fixup_masks masks = {0, 0};

    if (is_complex_fixup(fixup))
    {
        enum complex_fixup complex_fixup = get_complex_fixup(fixup);
        FIXME("Complex fixup (%#x) not supported\n", complex_fixup);
        return masks;
    }

    if (fixup.x_source != CHANNEL_SOURCE_X)
        masks.source |= WINED3DSP_WRITEMASK_0;
    if (fixup.y_source != CHANNEL_SOURCE_Y)
        masks.source |= WINED3DSP_WRITEMASK_1;
    if (fixup.z_source != CHANNEL_SOURCE_Z)
        masks.source |= WINED3DSP_WRITEMASK_2;
    if (fixup.w_source != CHANNEL_SOURCE_W)
        masks.source |= WINED3DSP_WRITEMASK_3;
    masks.source &= dst_mask;

    if (fixup.x_sign_fixup)
        masks.sign |= WINED3DSP_WRITEMASK_0;
    if (fixup.y_sign_fixup)
        masks.sign |= WINED3DSP_WRITEMASK_1;
    if (fixup.z_sign_fixup)
        masks.sign |= WINED3DSP_WRITEMASK_2;
    if (fixup.w_sign_fixup)
        masks.sign |= WINED3DSP_WRITEMASK_3;
    masks.sign &= dst_mask;

    return masks;
}
