
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SOCKET ;
typedef scalar_t__ INT ;
typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int LOG_ERROR ;
 int LOG_FILE ;
 int LogEvent (char*,int ,int ,int ) ;
 int RECV_BUF ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;
 int WSAGetLastError () ;
 int bShutdown ;
 scalar_t__ recv (int ,int *,int,int ) ;
 scalar_t__ send (int ,int *,scalar_t__,int ) ;
 int swprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static BOOL
EchoIncomingPackets(SOCKET sock)
{
    CHAR readBuffer[RECV_BUF];
    WCHAR logBuf[256];
    INT totalSentBytes;
    INT readBytes;
    INT retVal;

    do
    {
        readBytes = recv(sock, readBuffer, RECV_BUF, 0);
        if (readBytes > 0)
        {
            swprintf(logBuf, L"Received %d bytes from client", readBytes);
            LogEvent(logBuf, 0, 0, LOG_FILE);

            totalSentBytes = 0;
            while (!bShutdown && totalSentBytes < readBytes)
            {
                retVal = send(sock, readBuffer + totalSentBytes, readBytes - totalSentBytes, 0);
                if (retVal > 0)
                {
                    swprintf(logBuf, L"Sent %d bytes back to client", retVal);
                    LogEvent(logBuf, 0, 0, LOG_FILE);
                    totalSentBytes += retVal;
                }
                else if (retVal == SOCKET_ERROR)
                {
                    LogEvent(L"Echo: socket error", WSAGetLastError(), 0, LOG_ERROR);
                    return FALSE;
                }
                else
                {


                    LogEvent(L"Peer unexpectedly dropped connection!", 0, 0, LOG_FILE);
                    return FALSE;
                }
            }
        }
        else if (readBytes == SOCKET_ERROR)
        {
            LogEvent(L"Echo: socket error", WSAGetLastError(), 0, LOG_ERROR);
            return FALSE;
        }
    } while ((readBytes != 0) && (!bShutdown));

    if (!bShutdown)
        LogEvent(L"Echo: Connection closed by peer", 0, 0, LOG_FILE);

    return TRUE;
}
