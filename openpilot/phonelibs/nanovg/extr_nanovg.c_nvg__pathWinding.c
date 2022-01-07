
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int winding; } ;
typedef TYPE_1__ NVGpath ;
typedef int NVGcontext ;


 TYPE_1__* nvg__lastPath (int *) ;

__attribute__((used)) static void nvg__pathWinding(NVGcontext* ctx, int winding)
{
 NVGpath* path = nvg__lastPath(ctx);
 if (path == ((void*)0)) return;
 path->winding = winding;
}
