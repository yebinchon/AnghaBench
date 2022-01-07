
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int nnodes; int height; TYPE_1__* nodes; } ;
struct TYPE_4__ {int x; int y; scalar_t__ width; } ;
typedef TYPE_2__ FONSatlas ;


 int fons__maxi (int,int) ;

__attribute__((used)) static int fons__atlasRectFits(FONSatlas* atlas, int i, int w, int h)
{



 int x = atlas->nodes[i].x;
 int y = atlas->nodes[i].y;
 int spaceLeft;
 if (x + w > atlas->width)
  return -1;
 spaceLeft = w;
 while (spaceLeft > 0) {
  if (i == atlas->nnodes) return -1;
  y = fons__maxi(y, atlas->nodes[i].y);
  if (y + h > atlas->height) return -1;
  spaceLeft -= atlas->nodes[i].width;
  ++i;
 }
 return y;
}
