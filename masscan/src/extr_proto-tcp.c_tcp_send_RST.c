
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;
struct TemplatePacket {int dummy; } ;
struct PacketBuffer {int px; int length; } ;
typedef int PACKET_QUEUE ;


 int LOG (int ,char*) ;
 int fflush (int ) ;
 int pixie_usleep (int) ;
 int rte_ring_sc_dequeue (int *,void**) ;
 int rte_ring_sp_enqueue (int *,struct PacketBuffer*) ;
 int stdout ;
 int tcp_create_packet (struct TemplatePacket*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int,int ,int ,int ,int) ;

void
tcp_send_RST(
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





    for (err=1; err; ) {
        err = rte_ring_sc_dequeue(packet_buffers, (void**)&response);
        if (err != 0) {
            static int is_warning_printed = 0;
            if (!is_warning_printed) {
                LOG(0, "packet buffers empty (should be impossible)\n");
                is_warning_printed = 1;
            }
            fflush(stdout);
            pixie_usleep(wait = (uint64_t)(wait *1.5));
        }


    }
    if (response == ((void*)0))
        return;

    response->length = tcp_create_packet(
        templ,
        ip_them, port_them,
        ip_me, port_me,
        seqno_me, seqno_them,
        0x04,
        0, 0,
        response->px, sizeof(response->px)
        );






    for (err=1; err; ) {
        err = rte_ring_sp_enqueue(transmit_queue, response);
        if (err != 0) {
            LOG(0, "transmit queue full (should be impossible)\n");
            pixie_usleep(100);
        }
    }
}
