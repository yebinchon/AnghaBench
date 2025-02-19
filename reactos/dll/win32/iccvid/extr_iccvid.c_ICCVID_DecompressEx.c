
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ dwMagic; int bits_per_pixel; int * cvinfo; } ;
struct TYPE_11__ {int lpDst; TYPE_2__* lpbiSrc; int lpSrc; TYPE_1__* lpbiDst; } ;
struct TYPE_10__ {int biSizeImage; int biHeight; int biWidth; } ;
struct TYPE_9__ {int biHeight; } ;
typedef int LRESULT ;
typedef int LONG ;
typedef TYPE_3__ ICDECOMPRESSEX ;
typedef TYPE_4__ ICCVID_Info ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 scalar_t__ ICCVID_MAGIC ;
 int ICERR_BADPARAM ;
 int ICERR_OK ;
 int TRACE (char*,TYPE_4__*,TYPE_3__*,int ) ;
 int decode_cinepak (int *,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static LRESULT ICCVID_DecompressEx( ICCVID_Info *info, ICDECOMPRESSEX *icd, DWORD size )
{
    LONG width, height;
    BOOL inverted;

    TRACE("ICM_DECOMPRESSEX %p %p %d\n", info, icd, size);

    if( (info==((void*)0)) || (info->dwMagic!=ICCVID_MAGIC) )
        return ICERR_BADPARAM;
    if (info->cvinfo==((void*)0))
    {
        ERR("ICM_DECOMPRESSEX sent after ICM_DECOMPRESS_END\n");
        return ICERR_BADPARAM;
    }



    width = icd->lpbiSrc->biWidth;
    height = icd->lpbiSrc->biHeight;
    inverted = -icd->lpbiDst->biHeight == height;

    decode_cinepak(info->cvinfo, icd->lpSrc, icd->lpbiSrc->biSizeImage,
                   icd->lpDst, width, height, info->bits_per_pixel, inverted);

    return ICERR_OK;
}
