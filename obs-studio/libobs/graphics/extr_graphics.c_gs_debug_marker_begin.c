
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* device_debug_marker_begin ) (int ,char const*,float const*) ;} ;
struct TYPE_4__ {int device; TYPE_1__ exports; } ;


 int gs_valid (char*) ;
 int stub1 (int ,char const*,float const*) ;
 TYPE_2__* thread_graphics ;

void gs_debug_marker_begin(const float color[4], const char *markername)
{
 if (!gs_valid("gs_debug_marker_begin"))
  return;

 if (!markername)
  markername = "(null)";

 thread_graphics->exports.device_debug_marker_begin(
  thread_graphics->device, markername, color);
}
