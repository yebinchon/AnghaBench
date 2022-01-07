
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int biWidth; } ;
struct TYPE_14__ {TYPE_1__ bmiHeader; } ;
struct TYPE_13__ {int* has_alpha; int cy; int cx; int hdcMask; int hdcImage; scalar_t__ hbmMask; } ;
struct TYPE_12__ {int y; int x; } ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__* HIMAGELIST ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef TYPE_4__ BITMAPINFO ;


 int DIB_RGB_COLORS ;
 int FALSE ;
 int SRCCOPY ;
 int StretchDIBits (int ,int ,int ,int ,int ,int,int ,int,int,int*,TYPE_4__*,int ,int ) ;
 int imagelist_point_from_index (TYPE_3__*,int,TYPE_2__*) ;

__attribute__((used)) static void add_dib_bits( HIMAGELIST himl, int pos, int count, int width, int height,
                          BITMAPINFO *info, BITMAPINFO *mask_info, DWORD *bits, BYTE *mask_bits )
{
    int i, j, n;
    POINT pt;
    int stride = info->bmiHeader.biWidth;
    int mask_stride = (info->bmiHeader.biWidth + 31) / 32 * 4;

    for (n = 0; n < count; n++)
    {
        BOOL has_alpha = FALSE;

        imagelist_point_from_index( himl, pos + n, &pt );


        for (i = 0; i < height && !has_alpha; i++)
            for (j = n * width; j < (n + 1) * width; j++)
                if ((has_alpha = ((bits[i * stride + j] & 0xff000000) != 0))) break;

        if (!has_alpha)
        {
            for (i = 0; i < height; i++)
                for (j = n * width; j < (n + 1) * width; j++)
                    if (!mask_info || !((mask_bits[i * mask_stride + j / 8] << (j % 8)) & 0x80))
                        bits[i * stride + j] |= 0xff000000;
                    else
                        bits[i * stride + j] = 0;
        }
        else
        {
            himl->has_alpha[pos + n] = 1;

            if (mask_info && himl->hbmMask)
            {
                for (i = 0; i < height; i++)
                    for (j = n * width; j < (n + 1) * width; j++)
                        if ((bits[i * stride + j] >> 24) > 25)
                            mask_bits[i * mask_stride + j / 8] &= ~(0x80 >> (j % 8));
                        else
                            mask_bits[i * mask_stride + j / 8] |= 0x80 >> (j % 8);
            }
        }
        StretchDIBits( himl->hdcImage, pt.x, pt.y, himl->cx, himl->cy,
                       n * width, 0, width, height, bits, info, DIB_RGB_COLORS, SRCCOPY );
        if (mask_info)
            StretchDIBits( himl->hdcMask, pt.x, pt.y, himl->cx, himl->cy,
                           n * width, 0, width, height, mask_bits, mask_info, DIB_RGB_COLORS, SRCCOPY );
    }
}
