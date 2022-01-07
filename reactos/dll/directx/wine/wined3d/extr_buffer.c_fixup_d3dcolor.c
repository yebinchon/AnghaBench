
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;



__attribute__((used)) static inline unsigned int fixup_d3dcolor(DWORD *dst_color)
{
    DWORD src_color = *dst_color;
    *dst_color = 0;
    *dst_color |= (src_color & 0xff00ff00u);
    *dst_color |= (src_color & 0x00ff0000u) >> 16;
    *dst_color |= (src_color & 0x000000ffu) << 16;

    return sizeof(*dst_color);
}
