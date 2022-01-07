
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* m_body; int m_nBodySize; int m_nInfoField2; int m_nTimeStamp; int m_nChannel; int m_packetType; } ;
typedef TYPE_1__ RTMPPacket ;


 int RTMP_LOGDEBUG ;
 int RTMP_Log (int ,char*,int ,int ,int ,int ,int ,unsigned char) ;

void
RTMPPacket_Dump(RTMPPacket *p)
{
    RTMP_Log(RTMP_LOGDEBUG,
             "RTMP PACKET: packet type: 0x%02x. channel: 0x%02x. info 1: %d info 2: %d. Body size: %u. body: 0x%02x",
             p->m_packetType, p->m_nChannel, p->m_nTimeStamp, p->m_nInfoField2,
             p->m_nBodySize, p->m_body ? (unsigned char)p->m_body[0] : 0);
}
