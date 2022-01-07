
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct argb_conversion_info {int* destshift; int channelmask; TYPE_2__* destformat; TYPE_1__* srcformat; scalar_t__* process_channel; } ;
typedef int UINT ;
struct TYPE_4__ {int* shift; } ;
struct TYPE_3__ {scalar_t__* bits; } ;
typedef int DWORD ;



__attribute__((used)) static DWORD make_argb_color(const struct argb_conversion_info *info, const DWORD *in)
{
    UINT i;
    DWORD val = 0;

    for(i = 0;i < 4;i++) {
        if(info->process_channel[i]) {

            signed int shift;
            for(shift = info->destshift[i]; shift > info->destformat->shift[i]; shift -= info->srcformat->bits[i]) val |= in[i] << shift;
            val |= (in[i] >> (info->destformat->shift[i] - shift)) << info->destformat->shift[i];
        }
    }
    val |= info->channelmask;
    return val;
}
