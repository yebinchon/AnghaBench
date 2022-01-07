
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int pbuf ;
struct TYPE_7__ {int SWFVerificationResponse; } ;
struct TYPE_9__ {TYPE_1__ Link; } ;
struct TYPE_8__ {int m_nChannel; char* m_body; int m_nBodySize; scalar_t__ m_hasAbsTimestamp; scalar_t__ m_nInfoField2; scalar_t__ m_nTimeStamp; int m_packetType; int m_headerType; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMP ;


 char* AMF_EncodeInt16 (char*,char*,short) ;
 char* AMF_EncodeInt32 (char*,char*,unsigned int) ;
 int FALSE ;
 int RTMP_LOGDEBUG ;
 int RTMP_Log (int ,char*,...) ;
 int RTMP_LogHex (int ,int *,int) ;
 int RTMP_MAX_HEADER_SIZE ;
 int RTMP_PACKET_SIZE_MEDIUM ;
 int RTMP_PACKET_TYPE_CONTROL ;
 int RTMP_SendPacket (TYPE_3__*,TYPE_2__*,int ) ;
 int memcpy (char*,int ,int) ;

int
RTMP_SendCtrl(RTMP *r, short nType, unsigned int nObject, unsigned int nTime)
{
    RTMPPacket packet;
    char pbuf[256], *pend = pbuf + sizeof(pbuf);
    int nSize;
    char *buf;

    RTMP_Log(RTMP_LOGDEBUG, "sending ctrl. type: 0x%04x", (unsigned short)nType);

    packet.m_nChannel = 0x02;
    packet.m_headerType = RTMP_PACKET_SIZE_MEDIUM;
    packet.m_packetType = RTMP_PACKET_TYPE_CONTROL;
    packet.m_nTimeStamp = 0;
    packet.m_nInfoField2 = 0;
    packet.m_hasAbsTimestamp = 0;
    packet.m_body = pbuf + RTMP_MAX_HEADER_SIZE;

    switch(nType)
    {
    case 0x03:
        nSize = 10;
        break;
    case 0x1A:
        nSize = 3;
        break;
    case 0x1B:
        nSize = 44;
        break;
    default:
        nSize = 6;
        break;
    }

    packet.m_nBodySize = nSize;

    buf = packet.m_body;
    buf = AMF_EncodeInt16(buf, pend, nType);

    if (nType == 0x1B)
    {





    }
    else if (nType == 0x1A)
    {
        *buf = nObject & 0xff;
    }
    else
    {
        if (nSize > 2)
            buf = AMF_EncodeInt32(buf, pend, nObject);

        if (nSize > 6)
            buf = AMF_EncodeInt32(buf, pend, nTime);
    }

    return RTMP_SendPacket(r, &packet, FALSE);
}
