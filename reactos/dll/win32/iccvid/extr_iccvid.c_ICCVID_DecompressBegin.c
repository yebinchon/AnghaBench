
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dwMagic; int bits_per_pixel; scalar_t__ cvinfo; } ;
struct TYPE_7__ {int biBitCount; scalar_t__ biCompression; } ;
struct TYPE_8__ {int bmiColors; TYPE_1__ bmiHeader; } ;
typedef int LRESULT ;
typedef TYPE_2__* LPBITMAPINFO ;
typedef TYPE_3__ ICCVID_Info ;


 scalar_t__ BI_BITFIELDS ;
 scalar_t__ ICCVID_CheckMask (int ,int,int,int) ;
 scalar_t__ ICCVID_MAGIC ;
 int ICERR_BADPARAM ;
 int ICERR_OK ;
 int ICERR_UNSUPPORTED ;
 int TRACE (char*,...) ;
 scalar_t__ decode_cinepak_init () ;
 int free_cvinfo (scalar_t__) ;

__attribute__((used)) static LRESULT ICCVID_DecompressBegin( ICCVID_Info *info, LPBITMAPINFO in, LPBITMAPINFO out )
{
    TRACE("ICM_DECOMPRESS_BEGIN %p %p %p\n", info, in, out);

    if( (info==((void*)0)) || (info->dwMagic!=ICCVID_MAGIC) )
        return ICERR_BADPARAM;

    info->bits_per_pixel = out->bmiHeader.biBitCount;

    if (info->bits_per_pixel == 16)
    {
        if ( out->bmiHeader.biCompression == BI_BITFIELDS )
        {
            if ( ICCVID_CheckMask(out->bmiColors, 0x7C00, 0x03E0, 0x001F) )
                info->bits_per_pixel = 15;
            else if ( ICCVID_CheckMask(out->bmiColors, 0xF800, 0x07E0, 0x001F) )
                info->bits_per_pixel = 16;
            else
            {
                TRACE("unsupported output bit field(s) for 16-bit colors\n");
                return ICERR_UNSUPPORTED;
            }
        }
        else
            info->bits_per_pixel = 15;
    }

    TRACE("bit_per_pixel = %d\n", info->bits_per_pixel);

    if( info->cvinfo )
        free_cvinfo( info->cvinfo );
    info->cvinfo = decode_cinepak_init();

    return ICERR_OK;
}
