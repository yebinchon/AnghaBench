#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ sb_timedout; } ;
struct TYPE_15__ {int m_pausing; scalar_t__ m_mediaStamp; size_t m_mediaChannel; size_t m_channelsAllocatedIn; int /*<<< orphan*/ * m_channelTimestamp; int /*<<< orphan*/  m_pauseStamp; TYPE_1__ m_sb; int /*<<< orphan*/  m_bPlaying; } ;
struct TYPE_14__ {scalar_t__ m_nTimeStamp; int /*<<< orphan*/  m_hasAbsTimestamp; int /*<<< orphan*/  m_nBodySize; int /*<<< orphan*/  m_packetType; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  RTMP_LOGDEBUG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 

int
FUNC6(RTMP *r, RTMPPacket *packet)
{
    int bHasMediaPacket = 0;

    while (!bHasMediaPacket && FUNC3(r)
            && FUNC5(r, packet))
    {
        if (!FUNC1(packet) || !packet->m_nBodySize)
        {
            continue;
        }

        bHasMediaPacket = FUNC2(r, packet);

        if (!bHasMediaPacket)
        {
            FUNC0(packet);
        }
        else if (r->m_pausing == 3)
        {
            if (packet->m_nTimeStamp <= r->m_mediaStamp)
            {
                bHasMediaPacket = 0;
#ifdef _DEBUG
                RTMP_Log(RTMP_LOGDEBUG,
                         "Skipped type: %02X, size: %d, TS: %d ms, abs TS: %d, pause: %d ms",
                         packet->m_packetType, packet->m_nBodySize,
                         packet->m_nTimeStamp, packet->m_hasAbsTimestamp,
                         r->m_mediaStamp);
#endif
                FUNC0(packet);
                continue;
            }
            r->m_pausing = 0;
        }
    }

    if (bHasMediaPacket)
        r->m_bPlaying = TRUE;
    else if (r->m_sb.sb_timedout && !r->m_pausing)
        r->m_pauseStamp = r->m_mediaChannel < r->m_channelsAllocatedIn ?
                          r->m_channelTimestamp[r->m_mediaChannel] : 0;

    return bHasMediaPacket;
}