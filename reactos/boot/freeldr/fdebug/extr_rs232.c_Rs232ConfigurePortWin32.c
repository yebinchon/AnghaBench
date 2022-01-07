
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int dcb ;
struct TYPE_5__ {int DCBlength; } ;
typedef int TCHAR ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;
typedef int BOOL ;


 int BuildCommDCB (int *,TYPE_1__*) ;
 int FALSE ;
 int GetLastError () ;
 int MAXDWORD ;
 int Rs232SetCommunicationTimeoutsWin32 (int ,int ,int ,int ,int ) ;
 int SetCommState (int ,TYPE_1__*) ;
 int TEXT (char*) ;
 int TRUE ;
 int _tprintf (int ,int ) ;
 int hPortHandle ;
 int memset (TYPE_1__*,int ,int) ;

BOOL Rs232ConfigurePortWin32(TCHAR* DeviceControlString)
{
    DCB dcb;
    DWORD ErrorCode;
    memset(&dcb, 0, sizeof(DCB));
    dcb.DCBlength = sizeof(dcb);
    if (!BuildCommDCB(DeviceControlString, &dcb))
    {
        ErrorCode = GetLastError();

        _tprintf(TEXT("BuildCommDCB() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    if (!SetCommState(hPortHandle, &dcb))
    {
        ErrorCode = GetLastError();

        _tprintf(TEXT("SetCommState() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }


    if (!Rs232SetCommunicationTimeoutsWin32(MAXDWORD, 0, 0, 0, 0))
    {
        return FALSE;
    }

    return TRUE;
}
