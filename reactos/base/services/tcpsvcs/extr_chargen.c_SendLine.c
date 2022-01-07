
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;
typedef int LPSTR ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ LINESIZE ;
 int LOG_ERROR ;
 int LOG_FILE ;
 int LogEvent (char*,int ,int ,int ) ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;
 int WSAGetLastError () ;
 scalar_t__ send (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static BOOL
SendLine(SOCKET sock, LPSTR lpLine)
{
    BOOL bRet = FALSE;


    INT retVal = send(sock, lpLine, LINESIZE, 0);
    if (retVal > 0)
    {
        if (retVal == LINESIZE)
        {
            bRet = TRUE;
        }
        else
        {
            LogEvent(L"Chargen: Not sent enough bytes", 0, 0, LOG_FILE);
        }
    }
    else if (retVal == SOCKET_ERROR)
    {
        LogEvent(L"Chargen: Socket error\n", WSAGetLastError(), 0, LOG_ERROR);
    }
    else
    {
        LogEvent(L"Chargen: unknown error\n", WSAGetLastError(), 0, LOG_ERROR);
    }

    return bRet;
}
