
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* WriteTotalTimeoutMultiplier; void* WriteTotalTimeoutConstant; void* ReadTotalTimeoutMultiplier; void* ReadTotalTimeoutConstant; void* ReadIntervalTimeout; } ;
typedef void* DWORD ;
typedef TYPE_1__ COMMTIMEOUTS ;
typedef int BOOL ;


 int FALSE ;
 int GetCommTimeouts (int ,TYPE_1__*) ;
 void* GetLastError () ;
 int SetCommTimeouts (int ,TYPE_1__*) ;
 int TEXT (char*) ;
 int TRUE ;
 int _tprintf (int ,void*) ;
 int hPortHandle ;

BOOL Rs232SetCommunicationTimeoutsWin32(DWORD ReadIntervalTimeout, DWORD ReadTotalTimeoutMultiplier, DWORD ReadTotalTimeoutConstant, DWORD WriteTotalTimeoutMultiplier, DWORD WriteTotalTimeoutConstant)
{
    COMMTIMEOUTS ct;
    DWORD ErrorCode;

    if (!GetCommTimeouts(hPortHandle, &ct))
    {
        ErrorCode = GetLastError();

        _tprintf(TEXT("GetCommTimeouts() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    ct.ReadIntervalTimeout = ReadIntervalTimeout;
    ct.ReadTotalTimeoutConstant = ReadTotalTimeoutConstant;
    ct.ReadTotalTimeoutMultiplier = ReadTotalTimeoutMultiplier;
    ct.WriteTotalTimeoutConstant = WriteTotalTimeoutConstant;
    ct.WriteTotalTimeoutMultiplier = WriteTotalTimeoutMultiplier;

    if (!SetCommTimeouts(hPortHandle, &ct))
    {
        ErrorCode = GetLastError();

        _tprintf(TEXT("SetCommTimeouts() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    return TRUE;
}
