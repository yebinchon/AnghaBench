
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLQUERYFRAMELOCKMASTERI3DPROC ;
typedef scalar_t__ PFNWGLISENABLEDFRAMELOCKI3DPROC ;
typedef scalar_t__ PFNWGLENABLEFRAMELOCKI3DPROC ;
typedef scalar_t__ PFNWGLDISABLEFRAMELOCKI3DPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_I3D_swap_frame_lock ;
 scalar_t__ glad_wglDisableFrameLockI3D ;
 scalar_t__ glad_wglEnableFrameLockI3D ;
 scalar_t__ glad_wglIsEnabledFrameLockI3D ;
 scalar_t__ glad_wglQueryFrameLockMasterI3D ;

__attribute__((used)) static void load_WGL_I3D_swap_frame_lock(GLADloadproc load) {
 if(!GLAD_WGL_I3D_swap_frame_lock) return;
 glad_wglEnableFrameLockI3D = (PFNWGLENABLEFRAMELOCKI3DPROC)load("wglEnableFrameLockI3D");
 glad_wglDisableFrameLockI3D = (PFNWGLDISABLEFRAMELOCKI3DPROC)load("wglDisableFrameLockI3D");
 glad_wglIsEnabledFrameLockI3D = (PFNWGLISENABLEDFRAMELOCKI3DPROC)load("wglIsEnabledFrameLockI3D");
 glad_wglQueryFrameLockMasterI3D = (PFNWGLQUERYFRAMELOCKMASTERI3DPROC)load("wglQueryFrameLockMasterI3D");
}
