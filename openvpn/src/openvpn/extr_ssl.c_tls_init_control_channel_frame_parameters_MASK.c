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
struct frame {int /*<<< orphan*/  link_mtu; scalar_t__ link_mtu_dynamic; int /*<<< orphan*/  extra_link; } ;
typedef  int /*<<< orphan*/  packet_id_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONTROL_SEND_ACK_MAX ; 
 scalar_t__ SID_SIZE ; 
 scalar_t__ FUNC1 (struct frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct frame*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct frame*) ; 

__attribute__((used)) static void
FUNC6(const struct frame *data_channel_frame,
                                          struct frame *frame)
{
    /*
     * frame->extra_frame is already initialized with tls_auth buffer requirements,
     * if --tls-auth is enabled.
     */

    /* inherit link MTU and extra_link from data channel */
    frame->link_mtu = data_channel_frame->link_mtu;
    frame->extra_link = data_channel_frame->extra_link;

    /* set extra_frame */
    FUNC5(frame);
    FUNC4(frame, CONTROL_SEND_ACK_MAX);
    FUNC2(frame, SID_SIZE + sizeof(packet_id_type));

    /* set dynamic link MTU to cap control channel packets at 1250 bytes */
    FUNC0(FUNC1(frame) < FUNC3(frame->link_mtu, 1250));
    frame->link_mtu_dynamic = FUNC3(frame->link_mtu, 1250) - FUNC1(frame);
}