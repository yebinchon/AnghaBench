
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t m_mediaChannel; size_t m_channelsAllocatedIn; int m_pauseStamp; int * m_channelTimestamp; } ;
typedef TYPE_1__ RTMP ;


 int RTMP_SendPause (TYPE_1__*,int,int ) ;

int RTMP_Pause(RTMP *r, int DoPause)
{
    if (DoPause)
        r->m_pauseStamp = r->m_mediaChannel < r->m_channelsAllocatedIn ?
                          r->m_channelTimestamp[r->m_mediaChannel] : 0;
    return RTMP_SendPause(r, DoPause, r->m_pauseStamp);
}
