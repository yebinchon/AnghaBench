
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* device_frustum ) (int ,float,float,float,float,float,float) ;} ;
struct TYPE_5__ {int device; TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 float RAD (float) ;
 int gs_valid (char*) ;
 int stub1 (int ,float,float,float,float,float,float) ;
 float tanf (float) ;
 TYPE_2__* thread_graphics ;

void gs_perspective(float angle, float aspect, float near, float far)
{
 graphics_t *graphics = thread_graphics;
 float xmin, xmax, ymin, ymax;

 if (!gs_valid("gs_perspective"))
  return;

 ymax = near * tanf(RAD(angle) * 0.5f);
 ymin = -ymax;

 xmin = ymin * aspect;
 xmax = ymax * aspect;

 graphics->exports.device_frustum(graphics->device, xmin, xmax, ymin,
      ymax, near, far);
}
