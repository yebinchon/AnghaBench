
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int ** tpixels; } ;


 int BLEND_COLOR (int,int,int,int) ;
 int gdAlphaOpaque ;
 int gdImageGetPixel (TYPE_1__*,int,int) ;
 int gdTrueColorAlpha (int,int,int,int ) ;
 int gdTrueColorGetBlue (int) ;
 int gdTrueColorGetGreen (int) ;
 int gdTrueColorGetRed (int) ;

__attribute__((used)) inline static void gdImageSetAAPixelColor(gdImagePtr im, int x, int y, int color, int t)
{
 int dr,dg,db,p,r,g,b;
 dr = gdTrueColorGetRed(color);
 dg = gdTrueColorGetGreen(color);
 db = gdTrueColorGetBlue(color);

 p = gdImageGetPixel(im,x,y);
 r = gdTrueColorGetRed(p);
 g = gdTrueColorGetGreen(p);
 b = gdTrueColorGetBlue(p);

 BLEND_COLOR(t, dr, r, dr);
 BLEND_COLOR(t, dg, g, dg);
 BLEND_COLOR(t, db, b, db);
 im->tpixels[y][x]=gdTrueColorAlpha(dr, dg, db, gdAlphaOpaque);
}
