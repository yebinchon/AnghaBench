
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nnodes; int cnodes; TYPE_1__* nodes; } ;
struct TYPE_5__ {short x; short y; short width; } ;
typedef TYPE_1__ FONSatlasNode ;
typedef TYPE_2__ FONSatlas ;


 scalar_t__ realloc (TYPE_1__*,int) ;

__attribute__((used)) static int fons__atlasInsertNode(FONSatlas* atlas, int idx, int x, int y, int w)
{
 int i;

 if (atlas->nnodes+1 > atlas->cnodes) {
  atlas->cnodes = atlas->cnodes == 0 ? 8 : atlas->cnodes * 2;
  atlas->nodes = (FONSatlasNode*)realloc(atlas->nodes, sizeof(FONSatlasNode) * atlas->cnodes);
  if (atlas->nodes == ((void*)0))
   return 0;
 }
 for (i = atlas->nnodes; i > idx; i--)
  atlas->nodes[i] = atlas->nodes[i-1];
 atlas->nodes[idx].x = (short)x;
 atlas->nodes[idx].y = (short)y;
 atlas->nodes[idx].width = (short)w;
 atlas->nnodes++;

 return 1;
}
