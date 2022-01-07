
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_2__ {int brush; int memory; } ;


 int GdipFillEllipseI (int ,int ,short,short,unsigned short,unsigned short) ;
 int GdipSetSolidFillColor (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_fill_circle(short x, short y, unsigned short w,
    unsigned short h, struct nk_color col)
{
    GdipSetSolidFillColor(gdip.brush, convert_color(col));
    GdipFillEllipseI(gdip.memory, gdip.brush, x, y, w, h);
}
