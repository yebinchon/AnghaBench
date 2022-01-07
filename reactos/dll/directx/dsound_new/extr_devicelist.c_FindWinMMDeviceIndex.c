
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__* MappedId; int DevicePath; } ;
typedef TYPE_1__* LPFILTERINFO ;
typedef int DWORD_PTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ASSERT (int) ;
 int DPRINT (char*,scalar_t__,int ,scalar_t__) ;
 int DPRINT1 (char*,int ,int ,scalar_t__) ;
 int DRV_QUERYDEVICEINTERFACE ;
 int DRV_QUERYDEVICEINTERFACESIZE ;
 int MAX_PATH ;
 scalar_t__ MMSYSERR_NOERROR ;
 int TRUE ;
 int UlongToHandle (scalar_t__) ;
 scalar_t__ waveInGetNumDevs () ;
 scalar_t__ waveInMessage (int ,int ,int ,int) ;
 scalar_t__ waveOutGetNumDevs () ;
 scalar_t__ waveOutMessage (int ,int ,int ,int) ;
 int wcsicmp (int ,int *) ;

BOOL
FindWinMMDeviceIndex(
    LPFILTERINFO CurInfo,
    BOOL bRecord)
{
    ULONG DeviceCount, Index;
    WCHAR Buffer[MAX_PATH];
    DWORD Size, dwResult;

    if (bRecord)
        DeviceCount = waveInGetNumDevs();
    else
        DeviceCount = waveOutGetNumDevs();




    for(Index = 0; Index < DeviceCount; Index++)
    {
        Size = 0;


        if (bRecord)
            dwResult = waveInMessage(UlongToHandle(Index), DRV_QUERYDEVICEINTERFACESIZE, (DWORD_PTR)&Size, 0);
        else
            dwResult = waveOutMessage(UlongToHandle(Index), DRV_QUERYDEVICEINTERFACESIZE, (DWORD_PTR)&Size, 0);

        if (dwResult != MMSYSERR_NOERROR)
        {
            DPRINT("Failed DRV_QUERYDEVICEINTERFACESIZE with %lx bRecord %u Index %u\n", dwResult, bRecord, Index);
            continue;
        }


        ASSERT(Size < MAX_PATH);


        if (bRecord)
            dwResult = waveInMessage(UlongToHandle(Index), DRV_QUERYDEVICEINTERFACE, (DWORD_PTR)Buffer, MAX_PATH);
        else
            dwResult = waveOutMessage(UlongToHandle(Index), DRV_QUERYDEVICEINTERFACE, (DWORD_PTR)Buffer, MAX_PATH);

        if (dwResult != MMSYSERR_NOERROR)
        {
            DPRINT("Failed DRV_QUERYDEVICEINTERFACE with %lx bRecord %u Index %u\n", dwResult, bRecord, Index);
            continue;
        }

        if (!wcsicmp(CurInfo->DevicePath, Buffer))
        {
            if (bRecord)
                CurInfo->MappedId[0] = Index;
            else
                CurInfo->MappedId[1] = Index;

            return TRUE;
        }
    }

    DPRINT1("Failed to find device %ws bRecord %u Count %u\n", CurInfo->DevicePath, bRecord, DeviceCount);


    if (bRecord)
        CurInfo->MappedId[0] = 0;
    else
        CurInfo->MappedId[1] = 0;


    return TRUE;
}
