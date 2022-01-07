
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Adapter {scalar_t__ sendq; scalar_t__ pcap; scalar_t__ ring; } ;
struct TYPE_4__ {int (* sendqueue_destroy ) (scalar_t__) ;int (* close ) (scalar_t__) ;} ;
struct TYPE_3__ {int (* close ) (scalar_t__) ;} ;


 TYPE_2__ PCAP ;
 TYPE_1__ PFRING ;
 int free (struct Adapter*) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;

__attribute__((used)) static void
rawsock_close_adapter(struct Adapter *adapter)
{
    if (adapter->ring) {
        PFRING.close(adapter->ring);
    }
    if (adapter->pcap) {
        PCAP.close(adapter->pcap);
    }
    if (adapter->sendq) {
        PCAP.sendqueue_destroy(adapter->sendq);
    }

    free(adapter);
}
