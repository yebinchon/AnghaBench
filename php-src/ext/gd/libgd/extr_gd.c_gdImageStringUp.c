
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gdImagePtr ;
typedef TYPE_1__* gdFontPtr ;
struct TYPE_4__ {scalar_t__ w; } ;


 int gdImageCharUp (int ,TYPE_1__*,int,int,unsigned char,int) ;
 int strlen (char*) ;

void gdImageStringUp (gdImagePtr im, gdFontPtr f, int x, int y, unsigned char *s, int color)
{
 int i;
 int l;
 l = strlen ((char *) s);
 for (i = 0; (i < l); i++) {
  gdImageCharUp(im, f, x, y, s[i], color);
  y -= f->w;
 }
}
