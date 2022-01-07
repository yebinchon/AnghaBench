
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Adapter {scalar_t__ sendq; int pcap; } ;
struct TYPE_2__ {scalar_t__ (* sendqueue_alloc ) (int ) ;int (* sendqueue_destroy ) (scalar_t__) ;int (* sendqueue_transmit ) (int ,scalar_t__,int ) ;} ;


 TYPE_1__ PCAP ;
 int SENDQ_SIZE ;
 int stub1 (int ,scalar_t__,int ) ;
 int stub2 (scalar_t__) ;
 scalar_t__ stub3 (int ) ;

void
rawsock_flush(struct Adapter *adapter)
{
    if (adapter->sendq) {
        PCAP.sendqueue_transmit(adapter->pcap, adapter->sendq, 0);



        PCAP.sendqueue_destroy(adapter->sendq);
        adapter->sendq = PCAP.sendqueue_alloc(SENDQ_SIZE);
    }

}
