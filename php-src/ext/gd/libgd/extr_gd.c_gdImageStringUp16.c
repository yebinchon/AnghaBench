
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gdImagePtr ;
typedef TYPE_1__* gdFontPtr ;
struct TYPE_4__ {scalar_t__ w; } ;


 int gdImageCharUp (int ,TYPE_1__*,int,int,unsigned short,int) ;
 int strlen16 (unsigned short*) ;

void gdImageStringUp16 (gdImagePtr im, gdFontPtr f, int x, int y, unsigned short *s, int color)
{
 int i;
 int l;
 l = strlen16(s);
 for (i = 0; i < l; i++) {
  gdImageCharUp(im, f, x, y, s[i], color);
  y -= f->w;
 }
}
