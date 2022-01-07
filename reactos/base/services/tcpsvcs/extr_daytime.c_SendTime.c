
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;
typedef scalar_t__ SIZE_T ;
typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int LOG_ERROR ;
 int LogEvent (char*,int ,int ,int ) ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;
 int WSAGetLastError () ;
 scalar_t__ send (int ,int *,scalar_t__,int ) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static BOOL
SendTime(SOCKET sock, CHAR *time)
{
    SIZE_T stringSize = strlen(time) + 1;
    if (send(sock, time, stringSize, 0) == SOCKET_ERROR)
    {
        LogEvent(L"DayTime: Error sending data", WSAGetLastError(), 0, LOG_ERROR);
        return FALSE;
    }

    return TRUE;
}
