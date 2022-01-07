
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_pkthdr {unsigned int len; unsigned int caplen; } ;
struct Adapter {scalar_t__ pcap; scalar_t__ sendq; scalar_t__ ring; int pt_start; scalar_t__ is_packet_trace; } ;
struct TYPE_4__ {int (* sendqueue_queue ) (scalar_t__,struct pcap_pkthdr*,unsigned char const*) ;int (* sendpacket ) (scalar_t__,unsigned char const*,unsigned int) ;} ;
struct TYPE_3__ {int (* send ) (scalar_t__,unsigned char const*,unsigned int,unsigned char) ;} ;


 int LOG (int,char*,int) ;
 TYPE_2__ PCAP ;
 TYPE_1__ PFRING ;
 int PF_RING_ERROR_NO_TX_SLOT_AVAILABLE ;
 int packet_trace (int ,int ,unsigned char const*,unsigned int,int) ;
 int rawsock_flush (struct Adapter*) ;
 int stdout ;
 int stub1 (scalar_t__,unsigned char const*,unsigned int,unsigned char) ;
 int stub2 (scalar_t__,struct pcap_pkthdr*,unsigned char const*) ;
 int stub3 (scalar_t__,struct pcap_pkthdr*,unsigned char const*) ;
 int stub4 (scalar_t__,unsigned char const*,unsigned int) ;

int
rawsock_send_packet(
    struct Adapter *adapter,
    const unsigned char *packet,
    unsigned length,
    unsigned flush)
{
    if (adapter == 0)
        return 0;


    if (adapter->is_packet_trace) {
        packet_trace(stdout, adapter->pt_start, packet, length, 1);
    }


    if (adapter->ring) {
        int err = PF_RING_ERROR_NO_TX_SLOT_AVAILABLE;

        while (err == PF_RING_ERROR_NO_TX_SLOT_AVAILABLE) {
            err = PFRING.send(adapter->ring, packet, length, (unsigned char)flush);
        }
        if (err < 0)
            LOG(1, "pfring:xmit: ERROR %d\n", err);
        return err;
    }


    if (adapter->sendq) {
        int err;
        struct pcap_pkthdr hdr;
        hdr.len = length;
        hdr.caplen = length;

        err = PCAP.sendqueue_queue(adapter->sendq, &hdr, packet);
        if (err) {
            rawsock_flush(adapter);
            PCAP.sendqueue_queue(adapter->sendq, &hdr, packet);
        }

        if (flush) {
            rawsock_flush(adapter);
        }

        return 0;
    }


    if (adapter->pcap)
        return PCAP.sendpacket(adapter->pcap, packet, length);

    return 0;
}
