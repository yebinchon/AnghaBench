
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int nnodes; } ;
typedef TYPE_1__ FONSatlas ;


 int fons__atlasInsertNode (TYPE_1__*,int ,int,int ,int) ;

__attribute__((used)) static void fons__atlasExpand(FONSatlas* atlas, int w, int h)
{

 if (w > atlas->width)
  fons__atlasInsertNode(atlas, atlas->nnodes, atlas->width, 0, w - atlas->width);
 atlas->width = w;
 atlas->height = h;
}
