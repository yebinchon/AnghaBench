
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct TemplatePacket {int dummy; } ;
struct TCP_ConnectionTable {unsigned int timeout_connection; int timeout_hello; unsigned int count; unsigned int mask; struct Output* out; int report_banner; int banner1; int * packet_buffers; int * transmit_queue; struct TemplatePacket* pkt_template; int timeouts; int * entries; int entropy; } ;
struct Output {int dummy; } ;
typedef int PACKET_QUEUE ;
typedef int OUTPUT_REPORT_BANNER ;


 struct TCP_ConnectionTable* CALLOC (int,int) ;
 int TICKS_FROM_SECS (int ) ;
 int banner1_create () ;
 int * malloc (size_t) ;
 int memset (int *,int ,size_t) ;
 int time (int ) ;
 int timeouts_create (int ) ;

struct TCP_ConnectionTable *
tcpcon_create_table( size_t entry_count,
                        PACKET_QUEUE *transmit_queue,
                        PACKET_QUEUE *packet_buffers,
                        struct TemplatePacket *pkt_template,
                        OUTPUT_REPORT_BANNER report_banner,
                        struct Output *out,
                        unsigned connection_timeout,
                        uint64_t entropy
                        )
{
    struct TCP_ConnectionTable *tcpcon;



    tcpcon = CALLOC(1, sizeof(*tcpcon));
    tcpcon->timeout_connection = connection_timeout;
    if (tcpcon->timeout_connection == 0)
        tcpcon->timeout_connection = 30;
    tcpcon->timeout_hello = 2;
    tcpcon->entropy = entropy;



    {
        size_t new_entry_count;
        new_entry_count = 1;
        while (new_entry_count < entry_count) {
            new_entry_count *= 2;
            if (new_entry_count == 0) {
                new_entry_count = (1<<24);
                break;
            }
        }
        if (new_entry_count > (1<<24))
            new_entry_count = (1<<24);
        if (new_entry_count < (1<<10))
            new_entry_count = (1<<10);
        entry_count = new_entry_count;
    }



    while (tcpcon->entries == 0) {
        tcpcon->entries = malloc(entry_count * sizeof(*tcpcon->entries));
        if (tcpcon->entries == ((void*)0)) {
            entry_count >>= 1;
        }
    }
    memset(tcpcon->entries, 0, entry_count * sizeof(*tcpcon->entries));



    tcpcon->count = (unsigned)entry_count;
    tcpcon->mask = (unsigned)(entry_count-1);


    tcpcon->timeouts = timeouts_create(TICKS_FROM_SECS(time(0)));


    tcpcon->pkt_template = pkt_template;

    tcpcon->transmit_queue = transmit_queue;
    tcpcon->packet_buffers = packet_buffers;


    tcpcon->banner1 = banner1_create();

    tcpcon->report_banner = report_banner;
    tcpcon->out = out;
    return tcpcon;
}
