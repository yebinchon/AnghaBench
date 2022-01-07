
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct PacketBuffer {scalar_t__ length; int px; } ;
struct Adapter {int dummy; } ;
typedef int PACKET_QUEUE ;


 int LOG (int ,char*) ;
 int pixie_usleep (int) ;
 int rawsock_send_packet (struct Adapter*,int ,unsigned int,int) ;
 int rte_ring_sc_dequeue (int *,void**) ;
 int rte_ring_sp_enqueue (int *,struct PacketBuffer*) ;

__attribute__((used)) static void
flush_packets(struct Adapter *adapter,
    PACKET_QUEUE *packet_buffers,
    PACKET_QUEUE *transmit_queue,
    uint64_t *packets_sent,
    uint64_t *batchsize)
{



    for ( ; (*batchsize); (*batchsize)--) {
        int err;
        struct PacketBuffer *p;






        err = rte_ring_sc_dequeue(transmit_queue, (void**)&p);
        if (err) {
            break;
        }





        rawsock_send_packet(adapter, p->px, (unsigned)p->length, 1);





        for (err=1; err; ) {
            err = rte_ring_sp_enqueue(packet_buffers, p);
            if (err) {
                LOG(0, "transmit queue full (should be impossible)\n");
                pixie_usleep(10000);
            }
        }






        (*packets_sent)++;
    }

}
