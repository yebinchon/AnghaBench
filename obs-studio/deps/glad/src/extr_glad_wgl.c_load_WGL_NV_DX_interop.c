
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLDXUNREGISTEROBJECTNVPROC ;
typedef scalar_t__ PFNWGLDXUNLOCKOBJECTSNVPROC ;
typedef scalar_t__ PFNWGLDXSETRESOURCESHAREHANDLENVPROC ;
typedef scalar_t__ PFNWGLDXREGISTEROBJECTNVPROC ;
typedef scalar_t__ PFNWGLDXOPENDEVICENVPROC ;
typedef scalar_t__ PFNWGLDXOBJECTACCESSNVPROC ;
typedef scalar_t__ PFNWGLDXLOCKOBJECTSNVPROC ;
typedef scalar_t__ PFNWGLDXCLOSEDEVICENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_NV_DX_interop ;
 scalar_t__ glad_wglDXCloseDeviceNV ;
 scalar_t__ glad_wglDXLockObjectsNV ;
 scalar_t__ glad_wglDXObjectAccessNV ;
 scalar_t__ glad_wglDXOpenDeviceNV ;
 scalar_t__ glad_wglDXRegisterObjectNV ;
 scalar_t__ glad_wglDXSetResourceShareHandleNV ;
 scalar_t__ glad_wglDXUnlockObjectsNV ;
 scalar_t__ glad_wglDXUnregisterObjectNV ;

__attribute__((used)) static void load_WGL_NV_DX_interop(GLADloadproc load) {
 if(!GLAD_WGL_NV_DX_interop) return;
 glad_wglDXSetResourceShareHandleNV = (PFNWGLDXSETRESOURCESHAREHANDLENVPROC)load("wglDXSetResourceShareHandleNV");
 glad_wglDXOpenDeviceNV = (PFNWGLDXOPENDEVICENVPROC)load("wglDXOpenDeviceNV");
 glad_wglDXCloseDeviceNV = (PFNWGLDXCLOSEDEVICENVPROC)load("wglDXCloseDeviceNV");
 glad_wglDXRegisterObjectNV = (PFNWGLDXREGISTEROBJECTNVPROC)load("wglDXRegisterObjectNV");
 glad_wglDXUnregisterObjectNV = (PFNWGLDXUNREGISTEROBJECTNVPROC)load("wglDXUnregisterObjectNV");
 glad_wglDXObjectAccessNV = (PFNWGLDXOBJECTACCESSNVPROC)load("wglDXObjectAccessNV");
 glad_wglDXLockObjectsNV = (PFNWGLDXLOCKOBJECTSNVPROC)load("wglDXLockObjectsNV");
 glad_wglDXUnlockObjectsNV = (PFNWGLDXUNLOCKOBJECTSNVPROC)load("wglDXUnlockObjectsNV");
}
