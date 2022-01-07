
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* cache; } ;
struct TYPE_4__ {int npaths; int * paths; } ;
typedef int NVGpath ;
typedef TYPE_2__ NVGcontext ;



__attribute__((used)) static NVGpath* nvg__lastPath(NVGcontext* ctx)
{
 if (ctx->cache->npaths > 0)
  return &ctx->cache->paths[ctx->cache->npaths-1];
 return ((void*)0);
}
