
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_9__ {struct TYPE_9__* lpNext; } ;
typedef TYPE_1__* LPFILTERINFO ;
typedef scalar_t__ HRESULT ;
typedef int HDEVINFO ;
typedef TYPE_2__ GUID ;
typedef scalar_t__ DWORD ;


 int ASSERT (TYPE_1__*) ;
 int CloseDeviceList (int ) ;
 int DPRINT1 (char*,...) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ E_FAIL ;
 scalar_t__ EnumerateAudioFilter (TYPE_1__*,scalar_t__*,scalar_t__*) ;
 int GetDeviceListInterfaces (int ,TYPE_2__*,TYPE_1__**) ;
 scalar_t__ OpenDeviceList (TYPE_2__*,int *) ;
 int STATIC_KSCATEGORY_AUDIO ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;

HRESULT
EnumAudioDeviceInterfaces(
    LPFILTERINFO *OutRootInfo)
{
    HDEVINFO hList;
    DWORD Status;
    HRESULT hResult;
    ULONG WaveOutCount, WaveInCount;
    GUID AudioDeviceGuid = {STATIC_KSCATEGORY_AUDIO};
    LPFILTERINFO CurInfo;


    Status = OpenDeviceList(&AudioDeviceGuid, &hList);

    if (Status != ERROR_SUCCESS)
    {
        DPRINT1("OpenDeviceList failed with %lx\n", Status);
        return E_FAIL;
    }

    if (!GetDeviceListInterfaces(hList, &AudioDeviceGuid, OutRootInfo))
    {
        DPRINT1("No devices found\n");
        CloseDeviceList(hList);
        return S_FALSE;
    }


    ASSERT(*OutRootInfo);

    CurInfo = *OutRootInfo;

    WaveOutCount = 0;
    WaveInCount = 0;


    while(CurInfo)
    {

        hResult = EnumerateAudioFilter(CurInfo, &WaveInCount, &WaveOutCount);

        if (hResult != S_OK)
        {
           DPRINT1("EnumerateAudioFilter failed with %lx\n", Status);
           break;
        }


        CurInfo = CurInfo->lpNext;
    }


    CloseDeviceList(hList);


    return hResult;
}
