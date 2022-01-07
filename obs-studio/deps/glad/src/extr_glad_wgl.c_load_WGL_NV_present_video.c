
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLQUERYCURRENTCONTEXTNVPROC ;
typedef scalar_t__ PFNWGLENUMERATEVIDEODEVICESNVPROC ;
typedef scalar_t__ PFNWGLBINDVIDEODEVICENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_NV_present_video ;
 scalar_t__ glad_wglBindVideoDeviceNV ;
 scalar_t__ glad_wglEnumerateVideoDevicesNV ;
 scalar_t__ glad_wglQueryCurrentContextNV ;

__attribute__((used)) static void load_WGL_NV_present_video(GLADloadproc load) {
 if(!GLAD_WGL_NV_present_video) return;
 glad_wglEnumerateVideoDevicesNV = (PFNWGLENUMERATEVIDEODEVICESNVPROC)load("wglEnumerateVideoDevicesNV");
 glad_wglBindVideoDeviceNV = (PFNWGLBINDVIDEODEVICENVPROC)load("wglBindVideoDeviceNV");
 glad_wglQueryCurrentContextNV = (PFNWGLQUERYCURRENTCONTEXTNVPROC)load("wglQueryCurrentContextNV");
}
