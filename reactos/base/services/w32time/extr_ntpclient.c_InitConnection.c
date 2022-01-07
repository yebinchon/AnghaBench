
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct in_addr {int dummy; } ;
typedef int WSADATA ;
struct TYPE_8__ {struct in_addr sin_addr; int sin_port; int sin_family; } ;
struct TYPE_7__ {scalar_t__ h_addr; } ;
struct TYPE_6__ {scalar_t__ Sock; TYPE_4__ ntpAddr; } ;
typedef int SOCKADDR_IN ;
typedef TYPE_1__* PINFO ;
typedef int LPSTR ;
typedef scalar_t__ INT ;
typedef TYPE_2__ HOSTENT ;
typedef int BOOL ;


 int AF_INET ;
 int FALSE ;
 scalar_t__ INVALID_SOCKET ;
 int MAKEWORD (int,int) ;
 int NTPPORT ;
 int SOCK_DGRAM ;
 int TRUE ;
 scalar_t__ WSAStartup (int ,int *) ;
 int ZeroMemory (TYPE_4__*,int) ;
 TYPE_2__* gethostbyname (int ) ;
 int htons (int ) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static BOOL
InitConnection(PINFO pInfo,
               LPSTR lpAddress)
{
    WSADATA wsaData;
    HOSTENT *he;
    INT Ret;

    Ret = WSAStartup(MAKEWORD(2, 2),
                     &wsaData);
    if (Ret != 0)
        return FALSE;

    pInfo->Sock = socket(AF_INET,
                         SOCK_DGRAM,
                         0);
    if (pInfo->Sock == INVALID_SOCKET)
        return FALSE;


    he = gethostbyname(lpAddress);
    if (he != ((void*)0))
    {

        ZeroMemory(&pInfo->ntpAddr, sizeof(SOCKADDR_IN));
        pInfo->ntpAddr.sin_family = AF_INET;
        pInfo->ntpAddr.sin_port = htons(NTPPORT);
        pInfo->ntpAddr.sin_addr = *((struct in_addr *)he->h_addr);
    }
    else
        return FALSE;

    return TRUE;
}
