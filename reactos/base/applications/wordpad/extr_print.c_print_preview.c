
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int bottom; int right; int top; int left; } ;
struct TYPE_13__ {int cy; int cx; } ;
struct TYPE_12__ {int cx; scalar_t__ cy; } ;
struct TYPE_11__ {int cx; int cy; } ;
struct TYPE_15__ {int pages_shown; TYPE_4__ window; int zoomratio; TYPE_3__ bmSize; int hdc2; TYPE_2__ bmScaledSize; TYPE_1__ spacing; int page; int hdc; } ;
typedef TYPE_4__ RECT ;
typedef int PAINTSTRUCT ;
typedef int LRESULT ;
typedef int HWND ;
typedef int HRGN ;
typedef int HPEN ;
typedef int HDC ;


 int BeginPaint (int ,int *) ;
 int CombineRgn (int ,int ,int ,int ) ;
 int CreatePen (int,int,int ) ;
 int CreateRectRgnIndirect (TYPE_4__*) ;
 int DeleteObject (int ) ;
 int EndPaint (int ,int *) ;
 int FillRect (int ,TYPE_4__*,int ) ;
 int FillRgn (int ,int ,int ) ;
 int GRAY_BRUSH ;
 int GetClientRect (int ,TYPE_4__*) ;
 int GetScrollPos (int ,int ) ;
 int GetStockObject (int ) ;
 int InflateRect (TYPE_4__*,int,int) ;
 int PS_INSIDEFRAME ;
 int PS_SOLID ;
 int RGB (int ,int ,int ) ;
 int RGN_DIFF ;
 int Rectangle (int ,int ,int ,int ,int ) ;
 int SB_HORZ ;
 int SB_VERT ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;
 int SetRect (TYPE_4__*,int,int,int,scalar_t__) ;
 int SetRectRgn (int ,int ,int ,int ,int ) ;
 int StretchBlt (int ,int,int,int,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int WHITE_BRUSH ;
 int draw_margin_lines (int ,int,int,int ) ;
 int is_last_preview_page (int ) ;
 TYPE_5__ preview ;

__attribute__((used)) static LRESULT print_preview(HWND hwndPreview)
{
    HPEN hPen, oldPen;
    HDC hdc;
    HRGN back_rgn, excl_rgn;
    RECT window, background;
    PAINTSTRUCT ps;
    int x, y;

    hdc = BeginPaint(hwndPreview, &ps);
    GetClientRect(hwndPreview, &window);
    back_rgn = CreateRectRgnIndirect(&window);

    x = preview.spacing.cx - GetScrollPos(hwndPreview, SB_HORZ);
    y = preview.spacing.cy - GetScrollPos(hwndPreview, SB_VERT);


    hPen = CreatePen(PS_SOLID|PS_INSIDEFRAME, 2, RGB(0,0,0));
    oldPen = SelectObject(hdc, hPen);
    SetRect(&background, x - 2, y - 2, x + preview.bmScaledSize.cx + 2,
            y + preview.bmScaledSize.cy + 2);
    Rectangle(hdc, background.left, background.top,
              background.right, background.bottom);
    excl_rgn = CreateRectRgnIndirect(&background);
    CombineRgn(back_rgn, back_rgn, excl_rgn, RGN_DIFF);
    if(preview.pages_shown > 1)
    {
        background.left += preview.bmScaledSize.cx + preview.spacing.cx;
        background.right += preview.bmScaledSize.cx + preview.spacing.cx;
        Rectangle(hdc, background.left, background.top,
                  background.right, background.bottom);
        SetRectRgn(excl_rgn, background.left, background.top,
                   background.right, background.bottom);
        CombineRgn(back_rgn, back_rgn, excl_rgn, RGN_DIFF);
    }
    SelectObject(hdc, oldPen);
    DeleteObject(hPen);
    FillRgn(hdc, back_rgn, GetStockObject(GRAY_BRUSH));
    DeleteObject(excl_rgn);
    DeleteObject(back_rgn);

    StretchBlt(hdc, x, y, preview.bmScaledSize.cx, preview.bmScaledSize.cy,
               preview.hdc, 0, 0, preview.bmSize.cx, preview.bmSize.cy, SRCCOPY);

    draw_margin_lines(hdc, x, y, preview.zoomratio);

    if(preview.pages_shown > 1)
    {
        if (!is_last_preview_page(preview.page)) {
            x += preview.spacing.cx + preview.bmScaledSize.cx;
            StretchBlt(hdc, x, y,
                       preview.bmScaledSize.cx, preview.bmScaledSize.cy,
                       preview.hdc2, 0, 0,
                       preview.bmSize.cx, preview.bmSize.cy, SRCCOPY);

            draw_margin_lines(hdc, x, y, preview.zoomratio);
        } else {
            InflateRect(&background, -2, -2);
            FillRect(hdc, &background, GetStockObject(WHITE_BRUSH));
        }
    }

    preview.window = window;

    EndPaint(hwndPreview, &ps);

    return 0;
}
