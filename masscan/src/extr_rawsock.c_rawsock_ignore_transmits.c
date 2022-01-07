
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Adapter {scalar_t__ pcap; scalar_t__ ring; } ;
struct TYPE_2__ {int (* setdirection ) (scalar_t__,int ) ;int (* perror ) (scalar_t__,char*) ;} ;


 int LOG (int,char*,char const*) ;
 TYPE_1__ PCAP ;
 int PCAP_D_IN ;
 int UNUSEDPARM (unsigned char const*) ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__,char*) ;

void
rawsock_ignore_transmits(struct Adapter *adapter, const unsigned char *adapter_mac, const char *ifname)
{
    UNUSEDPARM(adapter_mac);
    if (adapter->ring) {



        return;
    }

    if (adapter->pcap) {
        int err;
        err = PCAP.setdirection(adapter->pcap, PCAP_D_IN);
        if (err) {
            PCAP.perror(adapter->pcap, "if: pcap_setdirection(IN)");
        } else {
            LOG(2, "if:%s: not receiving transmits\n", ifname);
        }
    }
}
