
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bmih ;
struct TYPE_5__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; scalar_t__ biSizeImage; int biCompression; } ;
struct TYPE_4__ {int forecol; int hatchstyle; int backcol; } ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_1__ GpHatch ;
typedef int DWORD ;
typedef TYPE_2__ BITMAPINFOHEADER ;
typedef int BITMAPINFO ;


 int BI_RGB ;
 scalar_t__ CreateDIBSection (int ,int *,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int FIXME (char*,int ) ;
 scalar_t__ Ok ;
 scalar_t__ get_hatch_data (int ,char const**) ;

__attribute__((used)) static HBITMAP create_hatch_bitmap(const GpHatch *hatch)
{
    HBITMAP hbmp;
    BITMAPINFOHEADER bmih;
    DWORD *bits;
    int x, y;

    bmih.biSize = sizeof(bmih);
    bmih.biWidth = 8;
    bmih.biHeight = 8;
    bmih.biPlanes = 1;
    bmih.biBitCount = 32;
    bmih.biCompression = BI_RGB;
    bmih.biSizeImage = 0;

    hbmp = CreateDIBSection(0, (BITMAPINFO *)&bmih, DIB_RGB_COLORS, (void **)&bits, ((void*)0), 0);
    if (hbmp)
    {
        const char *hatch_data;

        if (get_hatch_data(hatch->hatchstyle, &hatch_data) == Ok)
        {
            for (y = 0; y < 8; y++)
            {
                for (x = 0; x < 8; x++)
                {
                    if (hatch_data[y] & (0x80 >> x))
                        bits[y * 8 + x] = hatch->forecol;
                    else
                        bits[y * 8 + x] = hatch->backcol;
                }
            }
        }
        else
        {
            FIXME("Unimplemented hatch style %d\n", hatch->hatchstyle);

            for (y = 0; y < 64; y++)
                bits[y] = hatch->forecol;
        }
    }

    return hbmp;
}
