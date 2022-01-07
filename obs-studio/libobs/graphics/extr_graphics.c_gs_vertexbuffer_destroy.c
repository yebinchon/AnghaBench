
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gs_vertbuffer_t ;
struct TYPE_4__ {int (* gs_vertexbuffer_destroy ) (int *) ;} ;
struct TYPE_5__ {TYPE_1__ exports; } ;
typedef TYPE_2__ graphics_t ;


 int gs_valid (char*) ;
 int stub1 (int *) ;
 TYPE_2__* thread_graphics ;

void gs_vertexbuffer_destroy(gs_vertbuffer_t *vertbuffer)
{
 graphics_t *graphics = thread_graphics;

 if (!gs_valid("gs_vertexbuffer_destroy"))
  return;
 if (!vertbuffer)
  return;

 graphics->exports.gs_vertexbuffer_destroy(vertbuffer);
}
