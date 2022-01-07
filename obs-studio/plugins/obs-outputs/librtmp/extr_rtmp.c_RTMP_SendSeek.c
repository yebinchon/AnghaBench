
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pbuf ;
struct TYPE_7__ {scalar_t__ nResumeTS; int flags; } ;
struct TYPE_9__ {double m_numInvokes; TYPE_1__ m_read; } ;
struct TYPE_8__ {int m_nChannel; char* m_body; int m_nBodySize; scalar_t__ m_hasAbsTimestamp; scalar_t__ m_nInfoField2; scalar_t__ m_nTimeStamp; int m_packetType; int m_headerType; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMP ;


 char* AMF_EncodeNumber (char*,char*,double) ;
 char* AMF_EncodeString (char*,char*,int *) ;
 int AMF_NULL ;
 int RTMP_MAX_HEADER_SIZE ;
 int RTMP_PACKET_SIZE_MEDIUM ;
 int RTMP_PACKET_TYPE_INVOKE ;
 int RTMP_READ_SEEKING ;
 int RTMP_SendPacket (TYPE_3__*,TYPE_2__*,int ) ;
 int TRUE ;
 int av_seek ;

int
RTMP_SendSeek(RTMP *r, int iTime)
{
    RTMPPacket packet;
    char pbuf[256], *pend = pbuf + sizeof(pbuf);
    char *enc;

    packet.m_nChannel = 0x08;
    packet.m_headerType = RTMP_PACKET_SIZE_MEDIUM;
    packet.m_packetType = RTMP_PACKET_TYPE_INVOKE;
    packet.m_nTimeStamp = 0;
    packet.m_nInfoField2 = 0;
    packet.m_hasAbsTimestamp = 0;
    packet.m_body = pbuf + RTMP_MAX_HEADER_SIZE;

    enc = packet.m_body;
    enc = AMF_EncodeString(enc, pend, &av_seek);
    enc = AMF_EncodeNumber(enc, pend, ++r->m_numInvokes);
    *enc++ = AMF_NULL;
    enc = AMF_EncodeNumber(enc, pend, (double)iTime);

    packet.m_nBodySize = enc - packet.m_body;

    r->m_read.flags |= RTMP_READ_SEEKING;
    r->m_read.nResumeTS = 0;

    return RTMP_SendPacket(r, &packet, TRUE);
}
