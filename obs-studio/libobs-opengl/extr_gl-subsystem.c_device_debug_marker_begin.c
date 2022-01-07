
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float const gs_device_t ;


 int GL_DEBUG_SOURCE_APPLICATION ;
 int UNUSED_PARAMETER (float const*) ;
 int glPushDebugGroupKHR (int ,int ,int,char const*) ;

void device_debug_marker_begin(gs_device_t *device, const char *markername,
          const float color[4])
{
 UNUSED_PARAMETER(device);
 UNUSED_PARAMETER(color);

 glPushDebugGroupKHR(GL_DEBUG_SOURCE_APPLICATION, 0, -1, markername);
}
