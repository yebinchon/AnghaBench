#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * m_body; } ;
typedef  TYPE_1__ RTMPPacket ;

/* Variables and functions */
 int RTMP_MAX_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(RTMPPacket *p)
{
    if (p->m_body)
    {
        FUNC0(p->m_body - RTMP_MAX_HEADER_SIZE);
        p->m_body = NULL;
    }
}