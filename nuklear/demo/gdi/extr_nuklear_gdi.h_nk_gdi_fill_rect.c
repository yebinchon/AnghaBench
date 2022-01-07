
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_3__ {short member_0; short member_1; short member_2; short member_3; } ;
typedef TYPE_1__ RECT ;
typedef int HDC ;
typedef int COLORREF ;


 int ETO_OPAQUE ;
 int ExtTextOutW (int ,int ,int ,int ,TYPE_1__*,int *,int ,int *) ;
 int RoundRect (int ,short,short,short,short,unsigned short,unsigned short) ;
 int SetBkColor (int ,int ) ;
 int SetDCBrushColor (int ,int ) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_fill_rect(HDC dc, short x, short y, unsigned short w,
    unsigned short h, unsigned short r, struct nk_color col)
{
    COLORREF color = convert_color(col);

    if (r == 0) {
        RECT rect = { x, y, x + w, y + h };
        SetBkColor(dc, color);
        ExtTextOutW(dc, 0, 0, ETO_OPAQUE, &rect, ((void*)0), 0, ((void*)0));
    } else {
        SetDCPenColor(dc, color);
        SetDCBrushColor(dc, color);
        RoundRect(dc, x, y, x + w, y + h, r, r);
    }
}
