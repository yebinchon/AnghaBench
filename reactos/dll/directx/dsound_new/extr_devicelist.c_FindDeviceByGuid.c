
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* lpNext; int * DeviceGuid; } ;
typedef TYPE_1__* LPFILTERINFO ;
typedef int LPCGUID ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 TYPE_1__* RootInfo ;
 int TRUE ;

BOOL
FindDeviceByGuid(
    LPCGUID pGuidSrc,
    LPFILTERINFO *Filter)
{
    LPFILTERINFO CurInfo;
    if (!RootInfo)
        return FALSE;


    CurInfo = RootInfo;

    while(CurInfo)
    {
        if (IsEqualGUID(&CurInfo->DeviceGuid[0], pGuidSrc) ||
            IsEqualGUID(&CurInfo->DeviceGuid[1], pGuidSrc))
        {

            *Filter = CurInfo;
            return TRUE;
        }

        CurInfo = CurInfo->lpNext;
    }

    return FALSE;
}
