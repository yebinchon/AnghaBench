
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int bt; } ;
struct TYPE_12__ {int hdc; } ;
struct TYPE_11__ {int color; } ;
struct TYPE_10__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int HBITMAP ;
typedef int GpStatus ;
typedef TYPE_2__ GpSolidFill ;
typedef TYPE_3__ GpGraphics ;
typedef TYPE_4__ GpBrush ;


 int ARGB2BMP (int ) ;

 int CreateCompatibleDC (int *) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int FillPath (int ) ;
 int GenericError ;
 int GetClipBox (int ,TYPE_1__*) ;
 int NULLREGION ;
 int Ok ;
 int OutOfMemory ;
 int RGN_AND ;
 int SelectClipPath (int ,int ) ;
 int SelectObject (int ,int ) ;
 int create_gdi_brush (TYPE_4__*) ;
 int gdi_alpha_blend (TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int,int) ;

__attribute__((used)) static GpStatus brush_fill_path(GpGraphics *graphics, GpBrush *brush)
{
    GpStatus status = Ok;
    switch (brush->bt)
    {
    case 128:
    {
        GpSolidFill *fill = (GpSolidFill*)brush;
        HBITMAP bmp = ARGB2BMP(fill->color);

        if (bmp)
        {
            RECT rc;


            if (!SelectClipPath(graphics->hdc, RGN_AND))
            {
                status = GenericError;
                DeleteObject(bmp);
                break;
            }
            if (GetClipBox(graphics->hdc, &rc) != NULLREGION)
            {
                HDC hdc = CreateCompatibleDC(((void*)0));

                if (!hdc)
                {
                    status = OutOfMemory;
                    DeleteObject(bmp);
                    break;
                }

                SelectObject(hdc, bmp);
                gdi_alpha_blend(graphics, rc.left, rc.top, rc.right - rc.left, rc.bottom - rc.top,
                                hdc, 0, 0, 1, 1);
                DeleteDC(hdc);
            }

            DeleteObject(bmp);
            break;
        }

    }
    default:
    {
        HBRUSH gdibrush, old_brush;

        gdibrush = create_gdi_brush(brush);
        if (!gdibrush)
        {
            status = OutOfMemory;
            break;
        }

        old_brush = SelectObject(graphics->hdc, gdibrush);
        FillPath(graphics->hdc);
        SelectObject(graphics->hdc, old_brush);
        DeleteObject(gdibrush);
        break;
    }
    }

    return status;
}
