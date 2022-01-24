#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcap_pkthdr {unsigned int len; unsigned int caplen; } ;
struct Adapter {scalar_t__ pcap; scalar_t__ sendq; scalar_t__ ring; int /*<<< orphan*/  pt_start; scalar_t__ is_packet_trace; } ;
struct TYPE_4__ {int (* sendqueue_queue ) (scalar_t__,struct pcap_pkthdr*,unsigned char const*) ;int (* sendpacket ) (scalar_t__,unsigned char const*,unsigned int) ;} ;
struct TYPE_3__ {int (* send ) (scalar_t__,unsigned char const*,unsigned int,unsigned char) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 TYPE_2__ PCAP ; 
 TYPE_1__ PFRING ; 
 int PF_RING_ERROR_NO_TX_SLOT_AVAILABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Adapter*) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC3 (scalar_t__,unsigned char const*,unsigned int,unsigned char) ; 
 int FUNC4 (scalar_t__,struct pcap_pkthdr*,unsigned char const*) ; 
 int FUNC5 (scalar_t__,struct pcap_pkthdr*,unsigned char const*) ; 
 int FUNC6 (scalar_t__,unsigned char const*,unsigned int) ; 

int
FUNC7(
    struct Adapter *adapter,
    const unsigned char *packet,
    unsigned length,
    unsigned flush)
{
    if (adapter == 0)
        return 0;

    /* Print --packet-trace if debugging */
    if (adapter->is_packet_trace) {
        FUNC1(stdout, adapter->pt_start, packet, length, 1);
    }

    /* PF_RING */
    if (adapter->ring) {
        int err = PF_RING_ERROR_NO_TX_SLOT_AVAILABLE;

        while (err == PF_RING_ERROR_NO_TX_SLOT_AVAILABLE) {
            err = PFRING.send(adapter->ring, packet, length, (unsigned char)flush);
        }
        if (err < 0)
            FUNC0(1, "pfring:xmit: ERROR %d\n", err);
        return err;
    }

    /* WINDOWS PCAP */
    if (adapter->sendq) {
        int err;
        struct pcap_pkthdr hdr;
        hdr.len = length;
        hdr.caplen = length;

        err = PCAP.sendqueue_queue(adapter->sendq, &hdr, packet);
        if (err) {
            FUNC2(adapter);
            PCAP.sendqueue_queue(adapter->sendq, &hdr, packet);
        }

        if (flush) {
            FUNC2(adapter);
        }

        return 0;
    }

    /* LIBPCAP */
    if (adapter->pcap)
        return PCAP.sendpacket(adapter->pcap, packet, length);

    return 0;
}