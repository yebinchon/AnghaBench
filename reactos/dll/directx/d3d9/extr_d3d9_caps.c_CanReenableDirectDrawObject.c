
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ DeviceType; int hDirectDrawLocal; } ;
typedef TYPE_1__ D3D9_Unknown6BC ;
typedef scalar_t__ BOOL ;


 scalar_t__ D3DDEVTYPE_REF ;
 scalar_t__ D3DDEVTYPE_SW ;
 scalar_t__ FALSE ;
 scalar_t__ OsThunkDdReenableDirectDrawObject (int ,scalar_t__*) ;
 scalar_t__ TRUE ;

BOOL CanReenableDirectDrawObject(D3D9_Unknown6BC* pUnknown)
{
    BOOL bDisplayModeWasChanged;


    if (TRUE == OsThunkDdReenableDirectDrawObject(pUnknown->hDirectDrawLocal, &bDisplayModeWasChanged))
        return TRUE;


    if (pUnknown->DeviceType == D3DDEVTYPE_REF || pUnknown->DeviceType == D3DDEVTYPE_SW)
        return TRUE;

    return FALSE;
}
