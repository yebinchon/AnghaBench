
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pbuf ;
struct TYPE_7__ {char m_nClientBW2; int m_nClientBW; } ;
struct TYPE_6__ {int m_nChannel; char* m_body; int m_nBodySize; scalar_t__ m_hasAbsTimestamp; scalar_t__ m_nInfoField2; scalar_t__ m_nTimeStamp; int m_packetType; int m_headerType; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMP ;


 int AMF_EncodeInt32 (char*,char*,int ) ;
 int FALSE ;
 int RTMP_MAX_HEADER_SIZE ;
 int RTMP_PACKET_SIZE_LARGE ;
 int RTMP_PACKET_TYPE_CLIENT_BW ;
 int RTMP_SendPacket (TYPE_2__*,TYPE_1__*,int ) ;

int
RTMP_SendClientBW(RTMP *r)
{
    RTMPPacket packet;
    char pbuf[256], *pend = pbuf + sizeof(pbuf);

    packet.m_nChannel = 0x02;
    packet.m_headerType = RTMP_PACKET_SIZE_LARGE;
    packet.m_packetType = RTMP_PACKET_TYPE_CLIENT_BW;
    packet.m_nTimeStamp = 0;
    packet.m_nInfoField2 = 0;
    packet.m_hasAbsTimestamp = 0;
    packet.m_body = pbuf + RTMP_MAX_HEADER_SIZE;

    packet.m_nBodySize = 5;

    AMF_EncodeInt32(packet.m_body, pend, r->m_nClientBW);
    packet.m_body[4] = r->m_nClientBW2;
    return RTMP_SendPacket(r, &packet, FALSE);
}
