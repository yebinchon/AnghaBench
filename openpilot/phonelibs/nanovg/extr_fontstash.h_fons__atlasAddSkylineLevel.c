
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nnodes; TYPE_1__* nodes; } ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ width; scalar_t__ y; } ;
typedef TYPE_2__ FONSatlas ;


 scalar_t__ fons__atlasInsertNode (TYPE_2__*,int,int,int,int) ;
 int fons__atlasRemoveNode (TYPE_2__*,int) ;

__attribute__((used)) static int fons__atlasAddSkylineLevel(FONSatlas* atlas, int idx, int x, int y, int w, int h)
{
 int i;


 if (fons__atlasInsertNode(atlas, idx, x, y+h, w) == 0)
  return 0;


 for (i = idx+1; i < atlas->nnodes; i++) {
  if (atlas->nodes[i].x < atlas->nodes[i-1].x + atlas->nodes[i-1].width) {
   int shrink = atlas->nodes[i-1].x + atlas->nodes[i-1].width - atlas->nodes[i].x;
   atlas->nodes[i].x += (short)shrink;
   atlas->nodes[i].width -= (short)shrink;
   if (atlas->nodes[i].width <= 0) {
    fons__atlasRemoveNode(atlas, i);
    i--;
   } else {
    break;
   }
  } else {
   break;
  }
 }


 for (i = 0; i < atlas->nnodes-1; i++) {
  if (atlas->nodes[i].y == atlas->nodes[i+1].y) {
   atlas->nodes[i].width += atlas->nodes[i+1].width;
   fons__atlasRemoveNode(atlas, i+1);
   i--;
  }
 }

 return 1;
}
