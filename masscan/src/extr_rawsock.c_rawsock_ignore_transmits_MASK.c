#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct Adapter {scalar_t__ pcap; scalar_t__ ring; } ;
struct TYPE_2__ {int (* setdirection ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* perror ) (scalar_t__,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 TYPE_1__ PCAP ; 
 int /*<<< orphan*/  PCAP_D_IN ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 

void
FUNC4(struct Adapter *adapter, const unsigned char *adapter_mac, const char *ifname)
{
    FUNC1(adapter_mac);
    if (adapter->ring) {
        /* PORTABILITY: don't do anything for PF_RING, because it's
         * actually done when we create the adapter, because we can't
         * reconfigure the adapter after it's been activated. */
        return;
    }

    if (adapter->pcap) {
        int err;
        err = PCAP.setdirection(adapter->pcap, PCAP_D_IN);
        if (err) {
            PCAP.perror(adapter->pcap, "if: pcap_setdirection(IN)");
        } else {
            FUNC0(2, "if:%s: not receiving transmits\n", ifname);
        }
    }
}