
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ dwMagic; } ;
struct TYPE_12__ {int biSize; int biBitCount; int biClrUsed; int biSizeImage; int biHeight; int biWidth; int biCompression; } ;
struct TYPE_13__ {TYPE_1__ bmiHeader; } ;
typedef int RGBQUAD ;
typedef int LRESULT ;
typedef TYPE_2__* LPBITMAPINFO ;
typedef TYPE_3__ ICCVID_Info ;
typedef int DWORD ;


 int BI_RGB ;
 scalar_t__ ICCVID_MAGIC ;
 int ICERR_BADPARAM ;
 int ICERR_OK ;
 int TRACE (char*,TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 int get_stride (int ,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static LRESULT ICCVID_DecompressGetFormat( ICCVID_Info *info, LPBITMAPINFO in, LPBITMAPINFO out )
{
    DWORD size;

    TRACE("ICM_DECOMPRESS_GETFORMAT %p %p %p\n", info, in, out);

    if( (info==((void*)0)) || (info->dwMagic!=ICCVID_MAGIC) )
        return ICERR_BADPARAM;

    size = in->bmiHeader.biSize;
    if (in->bmiHeader.biBitCount <= 8)
        size += in->bmiHeader.biClrUsed * sizeof(RGBQUAD);

    if( out )
    {
        memcpy( out, in, size );
        out->bmiHeader.biBitCount = 24;
        out->bmiHeader.biCompression = BI_RGB;
        out->bmiHeader.biSizeImage = get_stride(in->bmiHeader.biWidth, 24) * in->bmiHeader.biHeight;
        return ICERR_OK;
    }
    return size;
}
