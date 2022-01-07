
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct Throttler {int dummy; } ;
struct ThreadPair {scalar_t__* total_syns; int done_transmitting; int nic_index; int transmit_queue; int packet_buffers; scalar_t__ my_index; struct Adapter* adapter; int tmplset; struct Throttler* throttler; struct Masscan* masscan; } ;
struct TemplateSet {int dummy; } ;
struct TYPE_4__ {int index; scalar_t__ count; } ;
struct TYPE_3__ {int of; int one; } ;
struct Masscan {scalar_t__ retries; scalar_t__ max_rate; int nic_count; scalar_t__ seed; scalar_t__ is_infinite; int ports; int targets; TYPE_2__ resume; TYPE_1__ shard; int blackrock_rounds; } ;
struct BlackRock {int dummy; } ;
struct Adapter {int dummy; } ;


 int LOG (int,char*,...) ;
 scalar_t__* MALLOC (int) ;
 int blackrock_init (struct BlackRock*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ blackrock_shuffle (struct BlackRock*,scalar_t__) ;
 int flush_packets (struct Adapter*,int ,int ,scalar_t__*,scalar_t__*) ;
 int get_sources (struct Masscan const*,int ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int is_rx_done ;
 scalar_t__ is_tx_done ;
 int pixie_usleep (int) ;
 scalar_t__ rangelist_count (int *) ;
 unsigned int rangelist_pick (int *,scalar_t__) ;
 int rawsock_flush (struct Adapter*) ;
 int rawsock_send_probe (struct Adapter*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int,struct TemplateSet*) ;
 scalar_t__ syn_cookie (unsigned int,unsigned int,unsigned int,unsigned int,scalar_t__) ;
 struct TemplateSet templ_copy (int ) ;
 scalar_t__ throttler_next_batch (struct Throttler*,scalar_t__) ;
 int throttler_start (struct Throttler*,int) ;

__attribute__((used)) static void
transmit_thread(void *v)
{
    struct ThreadPair *parms = (struct ThreadPair *)v;
    uint64_t i;
    uint64_t start;
    uint64_t end;
    const struct Masscan *masscan = parms->masscan;
    uint64_t retries = masscan->retries;
    uint64_t rate = masscan->max_rate;
    unsigned r = (unsigned)retries + 1;
    uint64_t range;
    struct BlackRock blackrock;
    uint64_t count_ips = rangelist_count(&masscan->targets);
    struct Throttler *throttler = parms->throttler;
    struct TemplateSet pkt_template = templ_copy(parms->tmplset);
    struct Adapter *adapter = parms->adapter;
    uint64_t packets_sent = 0;
    unsigned increment = (masscan->shard.of-1) + masscan->nic_count;
    unsigned src_ip;
    unsigned src_ip_mask;
    unsigned src_port;
    unsigned src_port_mask;
    uint64_t seed = masscan->seed;
    uint64_t repeats = 0;
    uint64_t *status_syn_count;
    uint64_t entropy = masscan->seed;

    LOG(1, "THREAD: xmit: starting thread #%u\n", parms->nic_index);




    status_syn_count = MALLOC(sizeof(uint64_t));
    *status_syn_count = 0;
    parms->total_syns = status_syn_count;




    get_sources(masscan, parms->nic_index,
                &src_ip, &src_ip_mask,
                &src_port, &src_port_mask);




    throttler_start(throttler, masscan->max_rate/masscan->nic_count);

infinite:




    range = rangelist_count(&masscan->targets)
            * rangelist_count(&masscan->ports);
    blackrock_init(&blackrock, range, seed, masscan->blackrock_rounds);







    start = masscan->resume.index + (masscan->shard.one-1) + parms->nic_index;
    end = range;
    if (masscan->resume.count && end > start + masscan->resume.count)
        end = start + masscan->resume.count;
    end += retries * rate;





    LOG(3, "THREAD: xmit: starting main loop: [%llu..%llu]\n", start, end);
    for (i=start; i<end; ) {
        uint64_t batch_size;







        batch_size = throttler_next_batch(throttler, packets_sent);
        flush_packets(adapter, parms->packet_buffers, parms->transmit_queue,
                        &packets_sent, &batch_size);






        while (batch_size && i < end) {
            uint64_t xXx;
            unsigned ip_them;
            unsigned port_them;
            unsigned ip_me;
            unsigned port_me;
            uint64_t cookie;
            xXx = (i + (r--) * rate);
            if (rate > range)
                xXx %= range;
            else
                while (xXx >= range)
                    xXx -= range;
            xXx = blackrock_shuffle(&blackrock, xXx);
            ip_them = rangelist_pick(&masscan->targets, xXx % count_ips);
            port_them = rangelist_pick(&masscan->ports, xXx / count_ips);





            if (src_ip_mask > 1 || src_port_mask > 1) {
                uint64_t ck = syn_cookie((unsigned)(i+repeats),
                                        (unsigned)((i+repeats)>>32),
                                        (unsigned)xXx, (unsigned)(xXx>>32),
                                        entropy);
                port_me = src_port + (ck & src_port_mask);
                ip_me = src_ip + ((ck>>16) & src_ip_mask);
            } else {
                ip_me = src_ip;
                port_me = src_port;
            }
            cookie = syn_cookie(ip_them, port_them, ip_me, port_me, entropy);
            rawsock_send_probe(
                    adapter,
                    ip_them, port_them,
                    ip_me, port_me,
                    (unsigned)cookie,
                    !batch_size,
                    &pkt_template
                    );
            batch_size--;
            packets_sent++;
            (*status_syn_count)++;
            if (r == 0) {
                i += increment;
                r = (unsigned)retries + 1;
            }

        }




        parms->my_index = i;




        if (is_tx_done) {
            break;
        }
    }





    if (masscan->is_infinite && !is_tx_done) {
        seed++;
        repeats++;
        goto infinite;
    }







    rawsock_flush(adapter);




    LOG(1, "THREAD: xmit done, waiting for receive thread to realize this\n");







    while (!is_rx_done) {
        unsigned k;
        uint64_t batch_size;

        for (k=0; k<1000; k++) {





            batch_size = throttler_next_batch(throttler, packets_sent);



            flush_packets( adapter,
                            parms->packet_buffers,
                            parms->transmit_queue,
                            &packets_sent,
                            &batch_size);



            rawsock_flush(adapter);

            pixie_usleep(100);
        }
    }


    parms->done_transmitting = 1;
    LOG(1, "THREAD: xmit: stopping thread #%u\n", parms->nic_index);
}
