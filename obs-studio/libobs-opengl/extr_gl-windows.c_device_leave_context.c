
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;


 int UNUSED_PARAMETER (int *) ;
 int wglMakeCurrent (int *,int *) ;

void device_leave_context(gs_device_t *device)
{
 wglMakeCurrent(((void*)0), ((void*)0));
 UNUSED_PARAMETER(device);
}
