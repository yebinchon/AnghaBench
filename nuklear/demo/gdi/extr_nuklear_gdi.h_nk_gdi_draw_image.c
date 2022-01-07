
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; } ;
struct nk_image {TYPE_1__ handle; } ;
struct nk_color {int dummy; } ;
struct TYPE_6__ {int memory_dc; } ;
struct TYPE_5__ {int bmHeight; int bmWidth; } ;
typedef int LPSTR ;
typedef int HDC ;
typedef int HBITMAP ;
typedef TYPE_2__ BITMAP ;


 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int GetObject (int ,int,int ) ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;
 int StretchBlt (int ,short,short,unsigned short,unsigned short,int ,int ,int ,int ,int ,int ) ;
 TYPE_3__ gdi ;

__attribute__((used)) static void
nk_gdi_draw_image(short x, short y, unsigned short w, unsigned short h,
    struct nk_image img, struct nk_color col)
{
    HBITMAP hbm = (HBITMAP)img.handle.ptr;
    HDC hDCBits;
    BITMAP bitmap;

    if (!gdi.memory_dc || !hbm)
        return;

    hDCBits = CreateCompatibleDC(gdi.memory_dc);
    GetObject(hbm, sizeof(BITMAP), (LPSTR)&bitmap);
    SelectObject(hDCBits, hbm);
    StretchBlt(gdi.memory_dc, x, y, w, h, hDCBits, 0, 0, bitmap.bmWidth, bitmap.bmHeight, SRCCOPY);
    DeleteDC(hDCBits);
}
