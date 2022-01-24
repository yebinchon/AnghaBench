#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  double uint64_t ;
struct TemplatePacket {int dummy; } ;
struct PacketBuffer {int /*<<< orphan*/  px; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  PACKET_QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct PacketBuffer*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (struct TemplatePacket*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC6(
    struct TemplatePacket *templ,
    PACKET_QUEUE *packet_buffers,
    PACKET_QUEUE *transmit_queue,
    unsigned ip_them, unsigned ip_me,
    unsigned port_them, unsigned port_me,
    unsigned seqno_them, unsigned seqno_me
)
{
    struct PacketBuffer *response = 0;
    int err = 0;
    uint64_t wait = 100;


    /* Get a buffer for sending the response packet. This thread doesn't
     * send the packet itself. Instead, it formats a packet, then hands
     * that packet off to a transmit thread for later transmission. */
    for (err=1; err; ) {
        err = FUNC3(packet_buffers, (void**)&response);
        if (err != 0) {
            static int is_warning_printed = 0;
            if (!is_warning_printed) {
                FUNC0(0, "packet buffers empty (should be impossible)\n");
                is_warning_printed = 1;
            }
            FUNC1(stdout);
            FUNC2(wait = (uint64_t)(wait *1.5)); /* no packet available */
        }
        //if (wait != 100)
        //    ;//printf("\n"); FIXME
    }
    if (response == NULL)
        return;

    response->length = FUNC5(
        templ,
        ip_them, port_them,
        ip_me, port_me,
        seqno_me, seqno_them,
        0x04, /*RST*/
        0, 0,
        response->px, sizeof(response->px)
        );


    /* Put this buffer on the transmit queue. Remember: transmits happen
     * from a transmit-thread only, and this function is being called
     * from a receive-thread. Therefore, instead of transmiting ourselves,
     * we hae to queue it up for later transmission. */
    for (err=1; err; ) {
        err = FUNC4(transmit_queue, response);
        if (err != 0) {
            FUNC0(0, "transmit queue full (should be impossible)\n");
            FUNC2(100); /* no space available */
        }
    }
}