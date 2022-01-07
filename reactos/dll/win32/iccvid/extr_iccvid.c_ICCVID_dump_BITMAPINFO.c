
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int biCompression; int biWidth; int biHeight; int biBitCount; int biPlanes; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef TYPE_2__ BITMAPINFO ;


 int TRACE (char*,int ,int ,int ,int ,int ) ;
 int debugstr_an (char const*,int) ;

__attribute__((used)) static void ICCVID_dump_BITMAPINFO(const BITMAPINFO * bmi)
{
    TRACE(
        "planes = %d\n"
        "bpp    = %d\n"
        "height = %d\n"
        "width  = %d\n"
        "compr  = %s\n",
        bmi->bmiHeader.biPlanes,
        bmi->bmiHeader.biBitCount,
        bmi->bmiHeader.biHeight,
        bmi->bmiHeader.biWidth,
        debugstr_an( (const char *)&bmi->bmiHeader.biCompression, 4 ) );
}
