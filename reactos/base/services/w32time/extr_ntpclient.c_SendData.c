
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_1; int member_0; } ;
struct TYPE_8__ {int LiVnMode; TYPE_1__ TransmitTimestamp; } ;
struct TYPE_7__ {int ntpAddr; TYPE_3__ SendPacket; int Sock; } ;
typedef TYPE_1__ TIMEPACKET ;
typedef int SOCKADDR_IN ;
typedef int SOCKADDR ;
typedef TYPE_2__* PINFO ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int FALSE ;
 int GetTransmitTime (TYPE_1__*) ;
 scalar_t__ SOCKET_ERROR ;
 int TRUE ;
 int ZeroMemory (TYPE_3__*,int) ;
 scalar_t__ sendto (int ,char*,int,int ,int *,int) ;

__attribute__((used)) static BOOL
SendData(PINFO pInfo)
{
    TIMEPACKET tp = { 0, 0 };
    INT Ret;

    ZeroMemory(&pInfo->SendPacket, sizeof(pInfo->SendPacket));
    pInfo->SendPacket.LiVnMode = 0x1b;
    if (!GetTransmitTime(&tp))
        return FALSE;
    pInfo->SendPacket.TransmitTimestamp = tp;

    Ret = sendto(pInfo->Sock,
                 (char *)&pInfo->SendPacket,
                 sizeof(pInfo->SendPacket),
                 0,
                 (SOCKADDR *)&pInfo->ntpAddr,
                 sizeof(SOCKADDR_IN));

    if (Ret == SOCKET_ERROR)
        return FALSE;

    return TRUE;
}
