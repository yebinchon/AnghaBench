
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwSize; int ddRVal; int lpvData; int dwExpectedSize; int guidInfo; } ;
typedef int LPVOID ;
typedef int DWORD ;
typedef TYPE_1__ DD_GETDRIVERINFODATA ;


 int E_FAIL ;
 int GUID_GetDriverInfo2 ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void PrepareDriverInfoData(DD_GETDRIVERINFODATA* DrvInfo, LPVOID pData, DWORD dwExpectedSize)
{
    memset(DrvInfo, 0, sizeof(DD_GETDRIVERINFODATA));
    DrvInfo->dwSize = sizeof(DD_GETDRIVERINFODATA);
    DrvInfo->guidInfo = GUID_GetDriverInfo2;
    DrvInfo->dwExpectedSize = dwExpectedSize;
    DrvInfo->lpvData = pData;
    DrvInfo->ddRVal = E_FAIL;
}
