
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char TCHAR ;
typedef int SOCKET ;
typedef scalar_t__ INT ;
typedef int CHAR ;
typedef int BOOL ;


 int BUFSIZE ;
 int FALSE ;
 int LOG_ERROR ;
 int LOG_FILE ;
 int LogEvent (char*,int ,int ,int ) ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;
 int WSAGetLastError () ;
 int bShutdown ;
 scalar_t__ recv (int ,int *,int,int ) ;
 int swprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static BOOL
ReceiveIncomingPackets(SOCKET sock)
{
    CHAR readBuffer[BUFSIZE];
    INT readBytes;

    do
    {
        readBytes = recv(sock, readBuffer, BUFSIZE, 0);
        if (readBytes > 0)
        {
            TCHAR logBuf[256];

            swprintf(logBuf, L"Discard: Received %d bytes from client", readBytes);
            LogEvent(logBuf, 0, 0, LOG_FILE);
        }
        else if (readBytes == SOCKET_ERROR)
        {
            LogEvent(L"Discard: Socket Error", WSAGetLastError(), 0, LOG_ERROR);
            return FALSE;
        }
    } while ((readBytes > 0) && (!bShutdown));

    if (!bShutdown)
        LogEvent(L"Discard: Connection closed by peer", 0, 0, LOG_FILE);

    return TRUE;
}
