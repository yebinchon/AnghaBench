#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int seekTime; } ;
struct TYPE_14__ {int m_bPlaying; scalar_t__ m_mediaChannel; TYPE_1__ Link; } ;
struct TYPE_13__ {scalar_t__ m_packetType; int /*<<< orphan*/  m_nBodySize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  RTMP_LOGWARNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ RTMP_PACKET_TYPE_AUDIO ; 
 scalar_t__ RTMP_PACKET_TYPE_INFO ; 
 scalar_t__ RTMP_PACKET_TYPE_VIDEO ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_2__*) ; 

int
FUNC6(RTMP *r, int seekTime)
{
    RTMPPacket packet = { 0 };

    /* seekTime was already set by SetupStream / SetupURL.
     * This is only needed by ReconnectStream.
     */
    if (seekTime > 0)
        r->Link.seekTime = seekTime;

    r->m_mediaChannel = 0;

    while (!r->m_bPlaying && FUNC3(r) && FUNC5(r, &packet))
    {
        if (FUNC1(&packet))
        {
            if (!packet.m_nBodySize)
                continue;
            if ((packet.m_packetType == RTMP_PACKET_TYPE_AUDIO) ||
                    (packet.m_packetType == RTMP_PACKET_TYPE_VIDEO) ||
                    (packet.m_packetType == RTMP_PACKET_TYPE_INFO))
            {
                FUNC4(RTMP_LOGWARNING, "Received FLV packet before play()! Ignoring.");
                FUNC0(&packet);
                continue;
            }

            FUNC2(r, &packet);
            FUNC0(&packet);
        }
    }

    return r->m_bPlaying;
}