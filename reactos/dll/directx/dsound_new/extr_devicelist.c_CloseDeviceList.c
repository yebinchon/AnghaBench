
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDEVINFO ;
typedef int BOOL ;


 int SetupDiDestroyDeviceInfoList (int ) ;

BOOL
CloseDeviceList(
    HDEVINFO Handle)
{
    return SetupDiDestroyDeviceInfoList(Handle);
}
