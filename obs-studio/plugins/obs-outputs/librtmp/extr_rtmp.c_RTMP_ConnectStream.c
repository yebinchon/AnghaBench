
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int seekTime; } ;
struct TYPE_14__ {int m_bPlaying; scalar_t__ m_mediaChannel; TYPE_1__ Link; } ;
struct TYPE_13__ {scalar_t__ m_packetType; int m_nBodySize; int member_0; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMP ;


 int RTMPPacket_Free (TYPE_2__*) ;
 scalar_t__ RTMPPacket_IsReady (TYPE_2__*) ;
 int RTMP_ClientPacket (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ RTMP_IsConnected (TYPE_3__*) ;
 int RTMP_LOGWARNING ;
 int RTMP_Log (int ,char*) ;
 scalar_t__ RTMP_PACKET_TYPE_AUDIO ;
 scalar_t__ RTMP_PACKET_TYPE_INFO ;
 scalar_t__ RTMP_PACKET_TYPE_VIDEO ;
 scalar_t__ RTMP_ReadPacket (TYPE_3__*,TYPE_2__*) ;

int
RTMP_ConnectStream(RTMP *r, int seekTime)
{
    RTMPPacket packet = { 0 };




    if (seekTime > 0)
        r->Link.seekTime = seekTime;

    r->m_mediaChannel = 0;

    while (!r->m_bPlaying && RTMP_IsConnected(r) && RTMP_ReadPacket(r, &packet))
    {
        if (RTMPPacket_IsReady(&packet))
        {
            if (!packet.m_nBodySize)
                continue;
            if ((packet.m_packetType == RTMP_PACKET_TYPE_AUDIO) ||
                    (packet.m_packetType == RTMP_PACKET_TYPE_VIDEO) ||
                    (packet.m_packetType == RTMP_PACKET_TYPE_INFO))
            {
                RTMP_Log(RTMP_LOGWARNING, "Received FLV packet before play()! Ignoring.");
                RTMPPacket_Free(&packet);
                continue;
            }

            RTMP_ClientPacket(r, &packet);
            RTMPPacket_Free(&packet);
        }
    }

    return r->m_bPlaying;
}
