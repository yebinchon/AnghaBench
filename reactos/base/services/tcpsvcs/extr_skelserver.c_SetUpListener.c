
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_2__ SOCKADDR_IN ;
typedef int SOCKADDR ;
typedef scalar_t__ BOOL ;


 int AF_INET ;
 scalar_t__ FALSE ;
 int INADDR_ANY ;
 scalar_t__ INVALID_SOCKET ;
 int LOG_ERROR ;
 int LogEvent (char*,int ,int ,int ) ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int SOMAXCONN ;
 scalar_t__ TRUE ;
 int WSAGetLastError () ;
 int ZeroMemory (TYPE_2__*,int) ;
 scalar_t__ bind (scalar_t__,int *,int) ;
 int htonl (int ) ;
 scalar_t__ listen (scalar_t__,int ) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static SOCKET
SetUpListener(USHORT Port)
{
    SOCKET sock;
    SOCKADDR_IN server;
    BOOL bSetup = FALSE;

    sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock != INVALID_SOCKET)
    {
        ZeroMemory(&server, sizeof(SOCKADDR_IN));
        server.sin_family = AF_INET;
        server.sin_addr.s_addr = htonl(INADDR_ANY);
        server.sin_port = Port;

        if (bind(sock, (SOCKADDR*)&server, sizeof(SOCKADDR_IN)) != SOCKET_ERROR)
        {
            if (listen(sock, SOMAXCONN) != SOCKET_ERROR)
            {
                bSetup = TRUE;
            }
            else
            {
                LogEvent(L"listen() failed", WSAGetLastError(), 0, LOG_ERROR);
            }
        }
        else
        {
            LogEvent(L"bind() failed", WSAGetLastError(), 0, LOG_ERROR);
        }
    }
    else
    {
        LogEvent(L"socket() failed", WSAGetLastError(), 0, LOG_ERROR);
    }

    return bSetup ? sock : INVALID_SOCKET;
}
