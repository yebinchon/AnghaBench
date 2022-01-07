
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_5__ {int height; int width; } ;
struct TYPE_4__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int HDC ;
typedef int COLORREF ;


 int ETO_OPAQUE ;
 int ExtTextOutW (int ,int ,int ,int ,TYPE_1__*,int *,int ,int *) ;
 int SetBkColor (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_2__ gdi ;

__attribute__((used)) static void
nk_gdi_clear(HDC dc, struct nk_color col)
{
    COLORREF color = convert_color(col);
    RECT rect = { 0, 0, gdi.width, gdi.height };
    SetBkColor(dc, color);

    ExtTextOutW(dc, 0, 0, ETO_OPAQUE, &rect, ((void*)0), 0, ((void*)0));
}
