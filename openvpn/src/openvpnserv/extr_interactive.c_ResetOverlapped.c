
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hEvent; } ;
typedef int OVERLAPPED ;
typedef TYPE_1__* LPOVERLAPPED ;
typedef int HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int ResetEvent (int ) ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static BOOL
ResetOverlapped(LPOVERLAPPED overlapped)
{
    HANDLE io_event = overlapped->hEvent;
    if (!ResetEvent(io_event))
    {
        return FALSE;
    }
    ZeroMemory(overlapped, sizeof(OVERLAPPED));
    overlapped->hEvent = io_event;
    return TRUE;
}
