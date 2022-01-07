
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_2__ {int brush; int memory; } ;
typedef unsigned short INT ;


 int GdipFillPieI (int ,int ,short,short,unsigned short,unsigned short,int,int) ;
 int GdipFillRectangleI (int ,int ,short,short,unsigned short,unsigned short) ;
 int GdipSetSolidFillColor (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_fill_rect(short x, short y, unsigned short w,
    unsigned short h, unsigned short r, struct nk_color col)
{
    GdipSetSolidFillColor(gdip.brush, convert_color(col));
    if (r == 0) {
        GdipFillRectangleI(gdip.memory, gdip.brush, x, y, w, h);
    } else {
        INT d = 2 * r;
        GdipFillRectangleI(gdip.memory, gdip.brush, x + r, y, w - d, h);
        GdipFillRectangleI(gdip.memory, gdip.brush, x, y + r, r, h - d);
        GdipFillRectangleI(gdip.memory, gdip.brush, x + w - r, y + r, r, h - d);
        GdipFillPieI(gdip.memory, gdip.brush, x, y, d, d, 180, 90);
        GdipFillPieI(gdip.memory, gdip.brush, x + w - d, y, d, d, 270, 90);
        GdipFillPieI(gdip.memory, gdip.brush, x + w - d, y + h - d, d, d, 0, 90);
        GdipFillPieI(gdip.memory, gdip.brush, x, y + h - d, d, d, 90, 90);
    }
}
