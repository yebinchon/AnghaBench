
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cache; } ;
struct TYPE_4__ {int npoints; int * points; } ;
typedef int NVGpoint ;
typedef TYPE_2__ NVGcontext ;



__attribute__((used)) static NVGpoint* nvg__lastPoint(NVGcontext* ctx)
{
 if (ctx->cache->npoints > 0)
  return &ctx->cache->points[ctx->cache->npoints-1];
 return ((void*)0);
}
