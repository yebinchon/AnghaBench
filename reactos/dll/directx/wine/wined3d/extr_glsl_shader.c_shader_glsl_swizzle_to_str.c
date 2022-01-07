
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int DWORD ;
typedef scalar_t__ BOOL ;


 unsigned int WINED3DSP_WRITEMASK_0 ;
 size_t shader_glsl_swizzle_get_component (unsigned int,unsigned int) ;

__attribute__((used)) static void shader_glsl_swizzle_to_str(DWORD swizzle, BOOL fixup, DWORD mask, char *str)
{



    const char *swizzle_chars = fixup ? "zyxw" : "xyzw";
    unsigned int i;

    *str++ = '.';
    for (i = 0; i < 4; ++i)
    {
        if (mask & (WINED3DSP_WRITEMASK_0 << i))
            *str++ = swizzle_chars[shader_glsl_swizzle_get_component(swizzle, i)];
    }
    *str = '\0';
}
