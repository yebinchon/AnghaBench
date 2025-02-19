
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLRELEASEVIDEOCAPTUREDEVICENVPROC ;
typedef scalar_t__ PFNWGLQUERYVIDEOCAPTUREDEVICENVPROC ;
typedef scalar_t__ PFNWGLLOCKVIDEOCAPTUREDEVICENVPROC ;
typedef scalar_t__ PFNWGLENUMERATEVIDEOCAPTUREDEVICESNVPROC ;
typedef scalar_t__ PFNWGLBINDVIDEOCAPTUREDEVICENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_NV_video_capture ;
 scalar_t__ glad_wglBindVideoCaptureDeviceNV ;
 scalar_t__ glad_wglEnumerateVideoCaptureDevicesNV ;
 scalar_t__ glad_wglLockVideoCaptureDeviceNV ;
 scalar_t__ glad_wglQueryVideoCaptureDeviceNV ;
 scalar_t__ glad_wglReleaseVideoCaptureDeviceNV ;

__attribute__((used)) static void load_WGL_NV_video_capture(GLADloadproc load) {
 if(!GLAD_WGL_NV_video_capture) return;
 glad_wglBindVideoCaptureDeviceNV = (PFNWGLBINDVIDEOCAPTUREDEVICENVPROC)load("wglBindVideoCaptureDeviceNV");
 glad_wglEnumerateVideoCaptureDevicesNV = (PFNWGLENUMERATEVIDEOCAPTUREDEVICESNVPROC)load("wglEnumerateVideoCaptureDevicesNV");
 glad_wglLockVideoCaptureDeviceNV = (PFNWGLLOCKVIDEOCAPTUREDEVICENVPROC)load("wglLockVideoCaptureDeviceNV");
 glad_wglQueryVideoCaptureDeviceNV = (PFNWGLQUERYVIDEOCAPTUREDEVICENVPROC)load("wglQueryVideoCaptureDeviceNV");
 glad_wglReleaseVideoCaptureDeviceNV = (PFNWGLRELEASEVIDEOCAPTUREDEVICENVPROC)load("wglReleaseVideoCaptureDeviceNV");
}
