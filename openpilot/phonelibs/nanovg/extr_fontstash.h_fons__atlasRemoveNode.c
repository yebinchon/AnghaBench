
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nnodes; int * nodes; } ;
typedef TYPE_1__ FONSatlas ;



__attribute__((used)) static void fons__atlasRemoveNode(FONSatlas* atlas, int idx)
{
 int i;
 if (atlas->nnodes == 0) return;
 for (i = idx; i < atlas->nnodes-1; i++)
  atlas->nodes[i] = atlas->nodes[i+1];
 atlas->nnodes--;
}
