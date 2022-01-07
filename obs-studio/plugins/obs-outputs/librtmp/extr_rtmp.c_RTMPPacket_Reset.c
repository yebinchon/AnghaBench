
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m_nBytesRead; scalar_t__ m_nBodySize; int m_hasAbsTimestamp; scalar_t__ m_nInfoField2; scalar_t__ m_nTimeStamp; scalar_t__ m_nChannel; scalar_t__ m_packetType; scalar_t__ m_headerType; } ;
typedef TYPE_1__ RTMPPacket ;


 int FALSE ;

void
RTMPPacket_Reset(RTMPPacket *p)
{
    p->m_headerType = 0;
    p->m_packetType = 0;
    p->m_nChannel = 0;
    p->m_nTimeStamp = 0;
    p->m_nInfoField2 = 0;
    p->m_hasAbsTimestamp = FALSE;
    p->m_nBodySize = 0;
    p->m_nBytesRead = 0;
}
