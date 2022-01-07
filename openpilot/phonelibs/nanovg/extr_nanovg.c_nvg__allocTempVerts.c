
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cache; } ;
struct TYPE_4__ {int cverts; int * verts; } ;
typedef int NVGvertex ;
typedef TYPE_2__ NVGcontext ;


 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static NVGvertex* nvg__allocTempVerts(NVGcontext* ctx, int nverts)
{
 if (nverts > ctx->cache->cverts) {
  NVGvertex* verts;
  int cverts = (nverts + 0xff) & ~0xff;
  verts = (NVGvertex*)realloc(ctx->cache->verts, sizeof(NVGvertex)*cverts);
  if (verts == ((void*)0)) return ((void*)0);
  ctx->cache->verts = verts;
  ctx->cache->cverts = cverts;
 }

 return ctx->cache->verts;
}
