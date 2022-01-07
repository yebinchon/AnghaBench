
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Revision; int SubSysId; int DeviceId; int VendorId; } ;
typedef int LPCSTR ;
typedef TYPE_1__ D3DADAPTER_IDENTIFIER9 ;


 int ParseField (int ,int *,char*) ;

__attribute__((used)) static void GetDeviceId(LPCSTR lpszDeviceKey, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    ParseField(lpszDeviceKey, &pIdentifier->VendorId, "VEN_");
    ParseField(lpszDeviceKey, &pIdentifier->DeviceId, "DEV_");
    ParseField(lpszDeviceKey, &pIdentifier->SubSysId, "SUBSYS_");
    ParseField(lpszDeviceKey, &pIdentifier->Revision, "REV_");
}
