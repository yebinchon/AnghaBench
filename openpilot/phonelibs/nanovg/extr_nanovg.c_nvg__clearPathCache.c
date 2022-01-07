
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cache; } ;
struct TYPE_4__ {scalar_t__ npaths; scalar_t__ npoints; } ;
typedef TYPE_2__ NVGcontext ;



__attribute__((used)) static void nvg__clearPathCache(NVGcontext* ctx)
{
 ctx->cache->npoints = 0;
 ctx->cache->npaths = 0;
}
