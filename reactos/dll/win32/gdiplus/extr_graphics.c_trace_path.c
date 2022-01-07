
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int hdc; } ;
struct TYPE_7__ {int Count; int Types; int Points; } ;
struct TYPE_8__ {TYPE_1__ pathdata; } ;
typedef int GpStatus ;
typedef TYPE_2__ GpPath ;
typedef TYPE_3__ GpGraphics ;


 int BeginPath (int ) ;
 int EndPath (int ) ;
 int FALSE ;
 int draw_poly (TYPE_3__*,int *,int ,int ,int ,int ) ;

GpStatus trace_path(GpGraphics *graphics, GpPath *path)
{
    GpStatus result;

    BeginPath(graphics->hdc);
    result = draw_poly(graphics, ((void*)0), path->pathdata.Points,
                       path->pathdata.Types, path->pathdata.Count, FALSE);
    EndPath(graphics->hdc);
    return result;
}
