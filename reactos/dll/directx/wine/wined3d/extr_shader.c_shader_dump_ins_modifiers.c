
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_dst_param {int modifiers; int shift; } ;
typedef int DWORD ;


 int FIXME (char*,int) ;
 int WINED3DSPDM_MSAMPCENTROID ;
 int WINED3DSPDM_PARTIALPRECISION ;
 int WINED3DSPDM_SATURATE ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;

__attribute__((used)) static void shader_dump_ins_modifiers(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_dst_param *dst)
{
    DWORD mmask = dst->modifiers;

    switch (dst->shift)
    {
        case 0: break;
        case 13: shader_addline(buffer, "_d8"); break;
        case 14: shader_addline(buffer, "_d4"); break;
        case 15: shader_addline(buffer, "_d2"); break;
        case 1: shader_addline(buffer, "_x2"); break;
        case 2: shader_addline(buffer, "_x4"); break;
        case 3: shader_addline(buffer, "_x8"); break;
        default: shader_addline(buffer, "_unhandled_shift(%d)", dst->shift); break;
    }

    if (mmask & WINED3DSPDM_SATURATE) shader_addline(buffer, "_sat");
    if (mmask & WINED3DSPDM_PARTIALPRECISION) shader_addline(buffer, "_pp");
    if (mmask & WINED3DSPDM_MSAMPCENTROID) shader_addline(buffer, "_centroid");

    mmask &= ~(WINED3DSPDM_SATURATE | WINED3DSPDM_PARTIALPRECISION | WINED3DSPDM_MSAMPCENTROID);
    if (mmask) FIXME("Unrecognised modifier %#x.\n", mmask);
}
