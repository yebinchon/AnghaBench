
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSENDPBUFFERTOVIDEONVPROC ;
typedef scalar_t__ PFNWGLRELEASEVIDEOIMAGENVPROC ;
typedef scalar_t__ PFNWGLRELEASEVIDEODEVICENVPROC ;
typedef scalar_t__ PFNWGLGETVIDEOINFONVPROC ;
typedef scalar_t__ PFNWGLGETVIDEODEVICENVPROC ;
typedef scalar_t__ PFNWGLBINDVIDEOIMAGENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_NV_video_output ;
 scalar_t__ glad_wglBindVideoImageNV ;
 scalar_t__ glad_wglGetVideoDeviceNV ;
 scalar_t__ glad_wglGetVideoInfoNV ;
 scalar_t__ glad_wglReleaseVideoDeviceNV ;
 scalar_t__ glad_wglReleaseVideoImageNV ;
 scalar_t__ glad_wglSendPbufferToVideoNV ;

__attribute__((used)) static void load_WGL_NV_video_output(GLADloadproc load) {
 if(!GLAD_WGL_NV_video_output) return;
 glad_wglGetVideoDeviceNV = (PFNWGLGETVIDEODEVICENVPROC)load("wglGetVideoDeviceNV");
 glad_wglReleaseVideoDeviceNV = (PFNWGLRELEASEVIDEODEVICENVPROC)load("wglReleaseVideoDeviceNV");
 glad_wglBindVideoImageNV = (PFNWGLBINDVIDEOIMAGENVPROC)load("wglBindVideoImageNV");
 glad_wglReleaseVideoImageNV = (PFNWGLRELEASEVIDEOIMAGENVPROC)load("wglReleaseVideoImageNV");
 glad_wglSendPbufferToVideoNV = (PFNWGLSENDPBUFFERTOVIDEONVPROC)load("wglSendPbufferToVideoNV");
 glad_wglGetVideoInfoNV = (PFNWGLGETVIDEOINFONVPROC)load("wglGetVideoInfoNV");
}
