
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;



__attribute__((used)) static unsigned int shader_glsl_swizzle_get_component(DWORD swizzle,
        unsigned int component_idx)
{

    return (swizzle >> (2 * component_idx)) & 0x3;
}
