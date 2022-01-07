
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; scalar_t__ nnodes; TYPE_1__* nodes; } ;
struct TYPE_4__ {short width; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ FONSatlas ;



__attribute__((used)) static void fons__atlasReset(FONSatlas* atlas, int w, int h)
{
 atlas->width = w;
 atlas->height = h;
 atlas->nnodes = 0;


 atlas->nodes[0].x = 0;
 atlas->nodes[0].y = 0;
 atlas->nodes[0].width = (short)w;
 atlas->nnodes++;
}
