
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int protocol; } ;
struct TYPE_7__ {int m_stream_id; TYPE_1__ Link; int m_bPlaying; } ;
typedef TYPE_2__ RTMP ;


 int FALSE ;
 int RTMP_FEATURE_WRITE ;
 int SendDeleteStream (TYPE_2__*,int) ;
 int SendFCUnpublish (TYPE_2__*,int) ;

void
RTMP_DeleteStream(RTMP *r, int streamIdx)
{
    if (r->m_stream_id < 0)
        return;

    r->m_bPlaying = FALSE;

    if ((r->Link.protocol & RTMP_FEATURE_WRITE))
        SendFCUnpublish(r, streamIdx);

    SendDeleteStream(r, r->m_stream_id);
    r->m_stream_id = -1;
}
