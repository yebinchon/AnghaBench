
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdRectPtr ;
typedef int gdImagePtr ;
struct TYPE_3__ {int x; int width; int y; int height; } ;


 int CLAMP (int,int,int) ;
 int gdImageGetClip (int ,int*,int*,int*,int*) ;

__attribute__((used)) static void gdImageClipRectangle(gdImagePtr im, gdRectPtr r)
{
 int c1x, c1y, c2x, c2y;
 int x1,y1;

 gdImageGetClip(im, &c1x, &c1y, &c2x, &c2y);
 x1 = r->x + r->width - 1;
 y1 = r->y + r->height - 1;
 r->x = CLAMP(r->x, c1x, c2x);
 r->y = CLAMP(r->y, c1y, c2y);
 r->width = CLAMP(x1, c1x, c2x) - r->x + 1;
 r->height = CLAMP(y1, c1y, c2y) - r->y + 1;
}
