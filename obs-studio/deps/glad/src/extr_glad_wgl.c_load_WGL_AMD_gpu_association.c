
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLMAKEASSOCIATEDCONTEXTCURRENTAMDPROC ;
typedef scalar_t__ PFNWGLGETGPUINFOAMDPROC ;
typedef scalar_t__ PFNWGLGETGPUIDSAMDPROC ;
typedef scalar_t__ PFNWGLGETCURRENTASSOCIATEDCONTEXTAMDPROC ;
typedef scalar_t__ PFNWGLGETCONTEXTGPUIDAMDPROC ;
typedef scalar_t__ PFNWGLDELETEASSOCIATEDCONTEXTAMDPROC ;
typedef scalar_t__ PFNWGLCREATEASSOCIATEDCONTEXTATTRIBSAMDPROC ;
typedef scalar_t__ PFNWGLCREATEASSOCIATEDCONTEXTAMDPROC ;
typedef scalar_t__ PFNWGLBLITCONTEXTFRAMEBUFFERAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_AMD_gpu_association ;
 scalar_t__ glad_wglBlitContextFramebufferAMD ;
 scalar_t__ glad_wglCreateAssociatedContextAMD ;
 scalar_t__ glad_wglCreateAssociatedContextAttribsAMD ;
 scalar_t__ glad_wglDeleteAssociatedContextAMD ;
 scalar_t__ glad_wglGetContextGPUIDAMD ;
 scalar_t__ glad_wglGetCurrentAssociatedContextAMD ;
 scalar_t__ glad_wglGetGPUIDsAMD ;
 scalar_t__ glad_wglGetGPUInfoAMD ;
 scalar_t__ glad_wglMakeAssociatedContextCurrentAMD ;

__attribute__((used)) static void load_WGL_AMD_gpu_association(GLADloadproc load) {
 if(!GLAD_WGL_AMD_gpu_association) return;
 glad_wglGetGPUIDsAMD = (PFNWGLGETGPUIDSAMDPROC)load("wglGetGPUIDsAMD");
 glad_wglGetGPUInfoAMD = (PFNWGLGETGPUINFOAMDPROC)load("wglGetGPUInfoAMD");
 glad_wglGetContextGPUIDAMD = (PFNWGLGETCONTEXTGPUIDAMDPROC)load("wglGetContextGPUIDAMD");
 glad_wglCreateAssociatedContextAMD = (PFNWGLCREATEASSOCIATEDCONTEXTAMDPROC)load("wglCreateAssociatedContextAMD");
 glad_wglCreateAssociatedContextAttribsAMD = (PFNWGLCREATEASSOCIATEDCONTEXTATTRIBSAMDPROC)load("wglCreateAssociatedContextAttribsAMD");
 glad_wglDeleteAssociatedContextAMD = (PFNWGLDELETEASSOCIATEDCONTEXTAMDPROC)load("wglDeleteAssociatedContextAMD");
 glad_wglMakeAssociatedContextCurrentAMD = (PFNWGLMAKEASSOCIATEDCONTEXTCURRENTAMDPROC)load("wglMakeAssociatedContextCurrentAMD");
 glad_wglGetCurrentAssociatedContextAMD = (PFNWGLGETCURRENTASSOCIATEDCONTEXTAMDPROC)load("wglGetCurrentAssociatedContextAMD");
 glad_wglBlitContextFramebufferAMD = (PFNWGLBLITCONTEXTFRAMEBUFFERAMDPROC)load("wglBlitContextFramebufferAMD");
}
