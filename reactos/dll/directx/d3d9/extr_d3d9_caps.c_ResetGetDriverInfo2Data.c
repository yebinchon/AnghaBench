
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* dwExpectedSize; void* dwType; int dwMagic; } ;
typedef void* DWORD ;
typedef TYPE_1__ DD_GETDRIVERINFO2DATA ;


 int D3DGDI2_MAGIC ;
 int memset (TYPE_1__*,int ,void*) ;

__attribute__((used)) static void ResetGetDriverInfo2Data(DD_GETDRIVERINFO2DATA* DrvInfo2, DWORD dwType, DWORD dwExpectedSize)
{
    memset(DrvInfo2, 0, dwExpectedSize);
    DrvInfo2->dwMagic = D3DGDI2_MAGIC;
    DrvInfo2->dwType = dwType;
    DrvInfo2->dwExpectedSize = dwExpectedSize;
}
