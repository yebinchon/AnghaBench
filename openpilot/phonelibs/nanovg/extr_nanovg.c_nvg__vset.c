
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float u; float v; } ;
typedef TYPE_1__ NVGvertex ;



__attribute__((used)) static void nvg__vset(NVGvertex* vtx, float x, float y, float u, float v)
{
 vtx->x = x;
 vtx->y = y;
 vtx->u = u;
 vtx->v = v;
}
