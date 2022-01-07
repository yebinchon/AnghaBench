
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;



__attribute__((used)) static DWORD shader_arb_select_component(DWORD swizzle, DWORD component)
{
    return ((swizzle >> 2 * component) & 0x3) * 0x55;
}
