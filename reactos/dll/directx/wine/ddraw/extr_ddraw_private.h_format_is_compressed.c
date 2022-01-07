
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwFlags; scalar_t__ dwFourCC; } ;
typedef TYPE_1__ DDPIXELFORMAT ;
typedef int BOOL ;


 int DDPF_FOURCC ;
 scalar_t__ WINED3DFMT_DXT1 ;
 scalar_t__ WINED3DFMT_DXT2 ;
 scalar_t__ WINED3DFMT_DXT3 ;
 scalar_t__ WINED3DFMT_DXT4 ;
 scalar_t__ WINED3DFMT_DXT5 ;

__attribute__((used)) static inline BOOL format_is_compressed(const DDPIXELFORMAT *format)
{
    return (format->dwFlags & DDPF_FOURCC) && (format->dwFourCC == WINED3DFMT_DXT1
            || format->dwFourCC == WINED3DFMT_DXT2 || format->dwFourCC == WINED3DFMT_DXT3
            || format->dwFourCC == WINED3DFMT_DXT4 || format->dwFourCC == WINED3DFMT_DXT5);
}
