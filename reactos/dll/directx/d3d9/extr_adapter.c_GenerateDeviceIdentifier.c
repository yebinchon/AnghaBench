
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HighPart; int LowPart; } ;
struct TYPE_5__ {TYPE_1__ DriverVersion; int Revision; int SubSysId; int DeviceId; int VendorId; int DeviceIdentifier; } ;
typedef int DWORD ;
typedef TYPE_2__ D3DADAPTER_IDENTIFIER9 ;


 int CLSID_DirectDraw ;

__attribute__((used)) static void GenerateDeviceIdentifier(D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    DWORD* dwIdentifier = (DWORD*)&pIdentifier->DeviceIdentifier;

    pIdentifier->DeviceIdentifier = CLSID_DirectDraw;

    dwIdentifier[0] ^= pIdentifier->VendorId;
    dwIdentifier[1] ^= pIdentifier->DeviceId;
    dwIdentifier[2] ^= pIdentifier->SubSysId;
    dwIdentifier[3] ^= pIdentifier->Revision;
    dwIdentifier[2] ^= pIdentifier->DriverVersion.LowPart;
    dwIdentifier[3] ^= pIdentifier->DriverVersion.HighPart;
}
