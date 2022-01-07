
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_stagesurf_t ;
struct TYPE_4__ {int (* gs_stagesurface_get_color_format ) (int const*) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GS_UNKNOWN ;
 int gs_valid_p (char*,int const*) ;
 int stub1 (int const*) ;
 TYPE_2__* thread_graphics ;

enum gs_color_format
gs_stagesurface_get_color_format(const gs_stagesurf_t *stagesurf)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid_p("gs_stagesurface_get_color_format", stagesurf))
  return GS_UNKNOWN;

 return graphics->exports.gs_stagesurface_get_color_format(stagesurf);
}
