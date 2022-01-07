
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SOCKET ;
typedef scalar_t__ INT ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 int BUF ;
 scalar_t__ FALSE ;
 int LOG_ERROR ;
 int LOG_FILE ;
 int LogEvent (char*,int ,int ,int ) ;
 int SD_SEND ;
 scalar_t__ SOCKET_ERROR ;
 scalar_t__ TRUE ;
 int WSAGetLastError () ;
 int closesocket (int ) ;
 scalar_t__ recv (int ,int *,int,int ) ;
 scalar_t__ shutdown (int ,int ) ;
 int swprintf (char*,char*,scalar_t__) ;

BOOL
ShutdownConnection(SOCKET sock,
                   BOOL bRec)
{
    WCHAR logBuf[256];




    if (shutdown(sock, SD_SEND) == SOCKET_ERROR)
    {
        LogEvent(L"Error in shutdown()", WSAGetLastError(), 0, LOG_ERROR);
        return FALSE;
    }



    if (bRec)
    {
        CHAR readBuffer[BUF];
        INT ret;

        do
        {
            ret = recv(sock, readBuffer, BUF, 0);
            if (ret >= 0)
            {
                swprintf(logBuf, L"FYI, received %d unexpected bytes during shutdown", ret);
                LogEvent(logBuf, 0, 0, LOG_FILE);
            }
        } while (ret > 0);
    }

    closesocket(sock);

    return TRUE;
}
