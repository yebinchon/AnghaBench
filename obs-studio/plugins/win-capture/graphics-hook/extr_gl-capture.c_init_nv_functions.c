
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* get_proc (char*) ;
 int hlog (char*) ;
 void* jimglDXCloseDeviceNV ;
 void* jimglDXLockObjectsNV ;
 void* jimglDXObjectAccessNV ;
 void* jimglDXOpenDeviceNV ;
 void* jimglDXRegisterObjectNV ;
 void* jimglDXSetResourceShareHandleNV ;
 void* jimglDXUnlockObjectsNV ;
 void* jimglDXUnregisterObjectNV ;
 int nv_capture_available ;

__attribute__((used)) static void init_nv_functions(void)
{
 jimglDXSetResourceShareHandleNV =
  get_proc("wglDXSetResourceShareHandleNV");
 jimglDXOpenDeviceNV = get_proc("wglDXOpenDeviceNV");
 jimglDXCloseDeviceNV = get_proc("wglDXCloseDeviceNV");
 jimglDXRegisterObjectNV = get_proc("wglDXRegisterObjectNV");
 jimglDXUnregisterObjectNV = get_proc("wglDXUnregisterObjectNV");
 jimglDXObjectAccessNV = get_proc("wglDXObjectAccessNV");
 jimglDXLockObjectsNV = get_proc("wglDXLockObjectsNV");
 jimglDXUnlockObjectsNV = get_proc("wglDXUnlockObjectsNV");

 nv_capture_available =
  !!jimglDXSetResourceShareHandleNV && !!jimglDXOpenDeviceNV &&
  !!jimglDXCloseDeviceNV && !!jimglDXRegisterObjectNV &&
  !!jimglDXUnregisterObjectNV && !!jimglDXObjectAccessNV &&
  !!jimglDXLockObjectsNV && !!jimglDXUnlockObjectsNV;

 if (nv_capture_available)
  hlog("Shared-texture OpenGL capture available");
}
