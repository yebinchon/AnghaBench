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
struct frame {int link_mtu; int link_mtu_dynamic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  M_WARN ; 
 int FUNC1 (struct frame*) ; 
 scalar_t__ TUN_MTU_MIN ; 
 scalar_t__ FUNC2 (struct frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 

void
FUNC5(struct frame *frame,
               bool link_mtu_defined,
               int link_mtu,
               bool tun_mtu_defined,
               int tun_mtu)
{
    /* Set link_mtu based on command line options */
    if (tun_mtu_defined)
    {
        FUNC0(!link_mtu_defined);
        frame->link_mtu = tun_mtu + FUNC1(frame);
    }
    else
    {
        FUNC0(link_mtu_defined);
        frame->link_mtu = link_mtu;
    }

    if (FUNC2(frame) < TUN_MTU_MIN)
    {
        FUNC4(M_WARN, "TUN MTU value (%d) must be at least %d", FUNC2(frame), TUN_MTU_MIN);
        FUNC3(frame, M_FATAL, "MTU is too small");
    }

    frame->link_mtu_dynamic = frame->link_mtu;
}