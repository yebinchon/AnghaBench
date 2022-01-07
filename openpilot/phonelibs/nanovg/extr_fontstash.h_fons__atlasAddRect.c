
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int height; int width; int nnodes; TYPE_1__* nodes; } ;
struct TYPE_6__ {int width; int x; } ;
typedef TYPE_2__ FONSatlas ;


 scalar_t__ fons__atlasAddSkylineLevel (TYPE_2__*,int,int,int,int,int) ;
 int fons__atlasRectFits (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int fons__atlasAddRect(FONSatlas* atlas, int rw, int rh, int* rx, int* ry)
{
 int besth = atlas->height, bestw = atlas->width, besti = -1;
 int bestx = -1, besty = -1, i;


 for (i = 0; i < atlas->nnodes; i++) {
  int y = fons__atlasRectFits(atlas, i, rw, rh);
  if (y != -1) {
   if (y + rh < besth || (y + rh == besth && atlas->nodes[i].width < bestw)) {
    besti = i;
    bestw = atlas->nodes[i].width;
    besth = y + rh;
    bestx = atlas->nodes[i].x;
    besty = y;
   }
  }
 }

 if (besti == -1)
  return 0;


 if (fons__atlasAddSkylineLevel(atlas, besti, bestx, besty, rw, rh) == 0)
  return 0;

 *rx = bestx;
 *ry = besty;

 return 1;
}
