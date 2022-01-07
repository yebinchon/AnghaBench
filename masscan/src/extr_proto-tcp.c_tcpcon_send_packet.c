
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;
struct TCP_Control_Block {unsigned char const* payload; unsigned short payload_length; int seqno_them; int seqno_me; int port_me; int ip_me; int port_them; int ip_them; } ;
struct TCP_ConnectionTable {int transmit_queue; int pkt_template; int packet_buffers; } ;
struct PacketBuffer {int length; int px; } ;


 unsigned int CTRL_SMALL_WINDOW ;
 int LOG (int ,char*) ;
 int fflush (int ) ;
 int pixie_usleep (int) ;
 int rte_ring_sc_dequeue (int ,void**) ;
 int rte_ring_sp_enqueue (int ,struct PacketBuffer*) ;
 int stdout ;
 int tcp_create_packet (int ,int ,int ,int ,int ,int ,int ,unsigned int,unsigned char const*,size_t,int ,int) ;
 int tcp_set_window (int ,int ,int) ;

__attribute__((used)) static void
tcpcon_send_packet(
    struct TCP_ConnectionTable *tcpcon,
    struct TCP_Control_Block *tcb,
    unsigned tcp_flags,
    const unsigned char *payload, size_t payload_length,
    unsigned ctrl)
{
    struct PacketBuffer *response = 0;
    int err = 0;
    uint64_t wait = 100;





    for (err=1; err; ) {
        err = rte_ring_sc_dequeue(tcpcon->packet_buffers, (void**)&response);
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
        tcpcon->pkt_template,
        tcb->ip_them, tcb->port_them,
        tcb->ip_me, tcb->port_me,
        tcb->seqno_me, tcb->seqno_them,
        tcp_flags,
        payload, payload_length,
        response->px, sizeof(response->px)
        );




    if (ctrl & CTRL_SMALL_WINDOW) {
        tcp_set_window(response->px, response->length, 600);
    }





    tcb->payload = payload;
    tcb->payload_length = (unsigned short)payload_length;





    for (err=1; err; ) {
        err = rte_ring_sp_enqueue(tcpcon->transmit_queue, response);
        if (err != 0) {
            LOG(0, "transmit queue full (should be impossible)\n");
            pixie_usleep(100);
        }
    }
}
