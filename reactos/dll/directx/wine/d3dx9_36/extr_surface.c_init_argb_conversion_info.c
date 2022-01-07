
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixel_format_desc {int* shift; int* bits; } ;
struct argb_conversion_info {int channelmask; int* srcmask; int* destmask; int * process_channel; void** destshift; void** srcshift; struct pixel_format_desc const* destformat; struct pixel_format_desc const* srcformat; } ;
typedef int UINT ;
typedef int BOOL ;


 int TRUE ;
 int ZeroMemory (int *,int) ;
 void* max (int,int ) ;

__attribute__((used)) static void init_argb_conversion_info(const struct pixel_format_desc *srcformat, const struct pixel_format_desc *destformat, struct argb_conversion_info *info)
{
    UINT i;
    ZeroMemory(info->process_channel, 4 * sizeof(BOOL));
    info->channelmask = 0;

    info->srcformat = srcformat;
    info->destformat = destformat;

    for(i = 0;i < 4;i++) {

        info->srcshift[i] = srcformat->shift[i] + max( srcformat->bits[i] - destformat->bits[i], 0);


        info->destshift[i] = destformat->shift[i] + max(destformat->bits[i] - srcformat->bits[i], 0);

        info->srcmask[i] = ((1 << srcformat->bits[i]) - 1) << srcformat->shift[i];
        info->destmask[i] = ((1 << destformat->bits[i]) - 1) << destformat->shift[i];


        if(destformat->bits[i]) {
            if(srcformat->bits[i]) info->process_channel[i] = TRUE;
            else info->channelmask |= info->destmask[i];
        }
    }
}
