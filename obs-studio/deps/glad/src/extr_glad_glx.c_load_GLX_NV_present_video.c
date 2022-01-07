
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXENUMERATEVIDEODEVICESNVPROC ;
typedef scalar_t__ PFNGLXBINDVIDEODEVICENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_NV_present_video ;
 scalar_t__ glad_glXBindVideoDeviceNV ;
 scalar_t__ glad_glXEnumerateVideoDevicesNV ;

__attribute__((used)) static void load_GLX_NV_present_video(GLADloadproc load) {
 if(!GLAD_GLX_NV_present_video) return;
 glad_glXEnumerateVideoDevicesNV = (PFNGLXENUMERATEVIDEODEVICESNVPROC)load("glXEnumerateVideoDevicesNV");
 glad_glXBindVideoDeviceNV = (PFNGLXBINDVIDEODEVICENVPROC)load("glXBindVideoDeviceNV");
}
