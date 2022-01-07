
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gdRectPtr ;
struct TYPE_3__ {int x; int y; int width; int height; } ;


 int printf (char*,char const*,int,int,int,int) ;

void gdDumpRect(const char *msg, gdRectPtr r)
{
 printf("%s (%i, %i) (%i, %i)\n", msg, r->x, r->y, r->width, r->height);
}
