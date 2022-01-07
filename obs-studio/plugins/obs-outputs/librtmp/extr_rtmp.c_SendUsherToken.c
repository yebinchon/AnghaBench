
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int pbuf ;
struct TYPE_12__ {int av_val; } ;
struct TYPE_11__ {int m_numInvokes; } ;
struct TYPE_10__ {int m_nChannel; char* m_body; int m_nBodySize; scalar_t__ m_hasAbsTimestamp; scalar_t__ m_nInfoField2; scalar_t__ m_nTimeStamp; int m_packetType; int m_headerType; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMP ;
typedef TYPE_3__ AVal ;


 char* AMF_EncodeNumber (char*,char*,int ) ;
 char* AMF_EncodeString (char*,char*,TYPE_3__*) ;
 int AMF_NULL ;
 int FALSE ;
 int RTMP_LOGDEBUG ;
 int RTMP_Log (int ,char*,int ) ;
 int RTMP_MAX_HEADER_SIZE ;
 int RTMP_PACKET_SIZE_MEDIUM ;
 int RTMP_PACKET_TYPE_INVOKE ;
 int RTMP_SendPacket (TYPE_2__*,TYPE_1__*,int) ;
 TYPE_3__ av_NetStream_Authenticate_UsherToken ;

__attribute__((used)) static int
SendUsherToken(RTMP *r, AVal *usherToken)
{
    RTMPPacket packet;
    char pbuf[1024], *pend = pbuf + sizeof(pbuf);
    char *enc;
    packet.m_nChannel = 0x03;
    packet.m_headerType = RTMP_PACKET_SIZE_MEDIUM;
    packet.m_packetType = RTMP_PACKET_TYPE_INVOKE;
    packet.m_nTimeStamp = 0;
    packet.m_nInfoField2 = 0;
    packet.m_hasAbsTimestamp = 0;
    packet.m_body = pbuf + RTMP_MAX_HEADER_SIZE;

    RTMP_Log(RTMP_LOGDEBUG, "UsherToken: %s", usherToken->av_val);
    enc = packet.m_body;
    enc = AMF_EncodeString(enc, pend, &av_NetStream_Authenticate_UsherToken);
    enc = AMF_EncodeNumber(enc, pend, ++r->m_numInvokes);
    *enc++ = AMF_NULL;
    enc = AMF_EncodeString(enc, pend, usherToken);

    if (!enc)
        return FALSE;

    packet.m_nBodySize = enc - packet.m_body;

    return RTMP_SendPacket(r, &packet, FALSE);
}
