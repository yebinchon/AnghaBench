
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ wFormatTag; } ;
struct TYPE_5__ {TYPE_2__ Format; } ;
typedef TYPE_1__ WAVEFORMATEXTENSIBLE ;
typedef TYPE_2__ WAVEFORMATEX ;


 scalar_t__ WAVE_FORMAT_EXTENSIBLE ;

__attribute__((used)) static void waveformat_copy(WAVEFORMATEXTENSIBLE* dst, WAVEFORMATEX* src)
{
    if (src->wFormatTag == WAVE_FORMAT_EXTENSIBLE) {
        *dst = *(WAVEFORMATEXTENSIBLE *)src;
    } else {
        dst->Format = *src;
    }
}
