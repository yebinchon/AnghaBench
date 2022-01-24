#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* jimglDXCloseDeviceNV ; 
 void* jimglDXLockObjectsNV ; 
 void* jimglDXObjectAccessNV ; 
 void* jimglDXOpenDeviceNV ; 
 void* jimglDXRegisterObjectNV ; 
 void* jimglDXSetResourceShareHandleNV ; 
 void* jimglDXUnlockObjectsNV ; 
 void* jimglDXUnregisterObjectNV ; 
 int nv_capture_available ; 

__attribute__((used)) static void FUNC2(void)
{
	jimglDXSetResourceShareHandleNV =
		FUNC0("wglDXSetResourceShareHandleNV");
	jimglDXOpenDeviceNV = FUNC0("wglDXOpenDeviceNV");
	jimglDXCloseDeviceNV = FUNC0("wglDXCloseDeviceNV");
	jimglDXRegisterObjectNV = FUNC0("wglDXRegisterObjectNV");
	jimglDXUnregisterObjectNV = FUNC0("wglDXUnregisterObjectNV");
	jimglDXObjectAccessNV = FUNC0("wglDXObjectAccessNV");
	jimglDXLockObjectsNV = FUNC0("wglDXLockObjectsNV");
	jimglDXUnlockObjectsNV = FUNC0("wglDXUnlockObjectsNV");

	nv_capture_available =
		!!jimglDXSetResourceShareHandleNV && !!jimglDXOpenDeviceNV &&
		!!jimglDXCloseDeviceNV && !!jimglDXRegisterObjectNV &&
		!!jimglDXUnregisterObjectNV && !!jimglDXObjectAccessNV &&
		!!jimglDXLockObjectsNV && !!jimglDXUnlockObjectsNV;

	if (nv_capture_available)
		FUNC1("Shared-texture OpenGL capture available");
}