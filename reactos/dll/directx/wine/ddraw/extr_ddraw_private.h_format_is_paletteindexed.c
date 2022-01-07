
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwFlags; } ;
typedef int DWORD ;
typedef TYPE_1__ DDPIXELFORMAT ;
typedef int BOOL ;


 int DDPF_PALETTEINDEXED1 ;
 int DDPF_PALETTEINDEXED2 ;
 int DDPF_PALETTEINDEXED4 ;
 int DDPF_PALETTEINDEXED8 ;
 int DDPF_PALETTEINDEXEDTO8 ;

__attribute__((used)) static inline BOOL format_is_paletteindexed(const DDPIXELFORMAT *fmt)
{
    DWORD flags = DDPF_PALETTEINDEXED1 | DDPF_PALETTEINDEXED2 | DDPF_PALETTEINDEXED4
            | DDPF_PALETTEINDEXED8 | DDPF_PALETTEINDEXEDTO8;
    return !!(fmt->dwFlags & flags);
}
