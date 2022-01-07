
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gdImagePtr ;
typedef TYPE_1__* gdFontPtr ;
struct TYPE_4__ {scalar_t__ w; } ;


 int gdImageChar (int ,TYPE_1__*,int,int,unsigned char,int) ;
 int strlen (char*) ;

void gdImageString (gdImagePtr im, gdFontPtr f, int x, int y, unsigned char *s, int color)
{
 int i;
 int l;
 l = strlen ((char *) s);
 for (i = 0; (i < l); i++) {
  gdImageChar(im, f, x, y, s[i], color);
  x += f->w;
 }
}
