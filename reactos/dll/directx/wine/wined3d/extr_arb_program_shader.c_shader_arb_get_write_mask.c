
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_instruction {int dummy; } ;
struct wined3d_shader_dst_param {int write_mask; } ;


 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int WINED3DSP_WRITEMASK_2 ;
 int WINED3DSP_WRITEMASK_3 ;
 int WINED3DSP_WRITEMASK_ALL ;

__attribute__((used)) static void shader_arb_get_write_mask(const struct wined3d_shader_instruction *ins,
        const struct wined3d_shader_dst_param *dst, char *write_mask)
{
    char *ptr = write_mask;

    if (dst->write_mask != WINED3DSP_WRITEMASK_ALL)
    {
        *ptr++ = '.';
        if (dst->write_mask & WINED3DSP_WRITEMASK_0) *ptr++ = 'x';
        if (dst->write_mask & WINED3DSP_WRITEMASK_1) *ptr++ = 'y';
        if (dst->write_mask & WINED3DSP_WRITEMASK_2) *ptr++ = 'z';
        if (dst->write_mask & WINED3DSP_WRITEMASK_3) *ptr++ = 'w';
    }

    *ptr = '\0';
}
