
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {scalar_t__ index; } ;
struct TYPE_9__ {int directory; } ;
struct TYPE_10__ {int is_show_open; int is_status_updates; TYPE_3__ rotate; } ;
struct TYPE_8__ {int oproto; int udp; } ;
struct TYPE_7__ {int one; int of; } ;
struct Masscan {int blackrock_rounds; int wait; double max_rate; int nic_count; int min_packet_size; int is_capture_cert; int is_readscan; int op; TYPE_6__* nic; TYPE_5__ resume; int ports; int targets; int exclude_port; int exclude_ip; scalar_t__ is_scripting; TYPE_4__ output; TYPE_2__ payloads; TYPE_1__ shard; int seed; } ;
typedef int WSADATA ;
struct TYPE_12__ {int ifname; } ;


 int LOG (int,char*) ;
 int WSAStartup (int,int *) ;
 scalar_t__ access (char*,int ) ;
 int banner1_selftest () ;
 int base64_selftest () ;
 int blackrock2_benchmark (int) ;
 int blackrock_benchmark (int) ;
 int blackrock_selftest () ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int get_entropy () ;
 int global_now ;
 int lcg_selftest () ;
 int main_listscan (struct Masscan*) ;
 int main_readrange (struct Masscan*) ;
 int main_scan (struct Masscan*) ;
 int mainconf_selftest () ;
 int masscan_command_line (struct Masscan*,int,char**) ;
 scalar_t__ masscan_conf_contains (char*,int,char**) ;
 int masscan_load_database_files (struct Masscan*) ;
 int masscan_read_config_file (struct Masscan*,char*) ;
 int masscan_usage () ;
 int memcmp (char*,char*,int) ;
 int memset (struct Masscan*,int ,int) ;
 int nmapserviceprobes_selftest () ;
 int ntp_selftest () ;
 int output_selftest () ;
 int payloads_oproto_create () ;
 int payloads_udp_create () ;
 int payloads_udp_selftest () ;
 scalar_t__ pcap_init () ;
 int pixie_backtrace_init (char*) ;
 int pixie_gettime () ;
 int pixie_time_selftest () ;
 int printf (char*,unsigned int) ;
 int proto_coap_selftest () ;
 int rangefile_selftest () ;
 int rangelist_count (int *) ;
 int rangelist_exclude (int *,int *) ;
 int ranges_selftest () ;
 int rawsock_init () ;
 int rawsock_list_adapters () ;
 int rawsock_selftest () ;
 int rawsock_selftest_if (int ) ;
 int read_binary_scanfile (struct Masscan*,unsigned int,unsigned int,char**) ;
 int rstfilter_selftest () ;
 int rte_ring_selftest () ;
 int scripting_init (struct Masscan*) ;
 int sctp_selftest () ;
 int siphash24_selftest () ;
 int smack_benchmark () ;
 int smack_selftest () ;
 int snmp_init () ;
 int snmp_selftest () ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy_s (int ,int,char*) ;
 int template_selftest () ;
 int time (int ) ;
 int usec_start ;
 int x509_init () ;
 int zeroaccess_selftest () ;

int main(int argc, char *argv[])
{
    struct Masscan masscan[1];
    unsigned i;

    usec_start = pixie_gettime();




    global_now = time(0);


    {
        int is_backtrace = 1;
        for (i=1; i<(unsigned)argc; i++) {
            if (strcmp(argv[i], "--nobacktrace") == 0)
                is_backtrace = 0;
        }
        if (is_backtrace)
            pixie_backtrace_init(argv[0]);
    }




    memset(masscan, 0, sizeof(*masscan));
    masscan->blackrock_rounds = 4;
    masscan->output.is_show_open = 1;
    masscan->output.is_status_updates = 1;
    masscan->seed = get_entropy();
    masscan->wait = 10;
    masscan->max_rate = 100.0;
    masscan->nic_count = 1;
    masscan->shard.one = 1;
    masscan->shard.of = 1;
    masscan->min_packet_size = 60;
    masscan->payloads.udp = payloads_udp_create();
    masscan->payloads.oproto = payloads_oproto_create();
    strcpy_s( masscan->output.rotate.directory,
                sizeof(masscan->output.rotate.directory),
                ".");
    masscan->is_capture_cert = 1;




    if (masscan_conf_contains("--readscan", argc, argv)) {
        masscan->is_readscan = 1;
    }
    if (!masscan->is_readscan) {
        if (access("/etc/masscan/masscan.conf", 0) == 0) {
            masscan_read_config_file(masscan, "/etc/masscan/masscan.conf");
        }
    }






    masscan_command_line(masscan, argc, argv);




    masscan_load_database_files(masscan);





    if (masscan->is_scripting)
        scripting_init(masscan);



    if (pcap_init() != 0)
        LOG(2, "libpcap: failed to load\n");
    rawsock_init();


    snmp_init();
    x509_init();







    {
        uint64_t range = rangelist_count(&masscan->targets) * rangelist_count(&masscan->ports);
        uint64_t range2;
        rangelist_exclude(&masscan->targets, &masscan->exclude_ip);
        rangelist_exclude(&masscan->ports, &masscan->exclude_port);


        range2 = rangelist_count(&masscan->targets) * rangelist_count(&masscan->ports);

        if (range != 0 && range2 == 0) {
            LOG(0, "FAIL: no ranges left to scan\n");
            LOG(0, "   ...all ranges overlapped something in an excludefile range\n");
            exit(1);
        }

        if (range2 != range && masscan->resume.index) {
            LOG(0, "FAIL: Attempted to add additional 'exclude' ranges after scan start.\n");
            LOG(0, "   ...This messes things up the scan randomization, so you have to restart scan\n");
            exit(1);
        }
    }







    switch (masscan->op) {
    case 134:

        masscan_usage();
        break;

    case 129:



        return main_scan(masscan);

    case 133:

        main_listscan(masscan);
        return 0;

    case 132:

        rawsock_list_adapters();
        break;

    case 135:
        for (i=0; i<masscan->nic_count; i++)
            rawsock_selftest_if(masscan->nic[i].ifname);
        return 0;

    case 131:
        main_readrange(masscan);
        return 0;

    case 130:
        {
            unsigned start;
            unsigned stop;


            for (start=1; start<(unsigned)argc; start++) {
                if (memcmp(argv[start], "--readscan", 10) == 0) {
                    start++;
                    break;
                }
            }


            for (stop=start+1; stop<(unsigned)argc && argv[stop][0] != '-'; stop++)
                ;





            read_binary_scanfile(masscan, start, stop, argv);

        }
        break;

    case 136:
        printf("=== benchmarking (%u-bits) ===\n\n", (unsigned)sizeof(void*)*8);
        blackrock_benchmark(masscan->blackrock_rounds);
        blackrock2_benchmark(masscan->blackrock_rounds);
        smack_benchmark();
        exit(1);
        break;

    case 128:



        {
            int x = 0;
            x += proto_coap_selftest();
            x += smack_selftest();
            x += sctp_selftest();
            x += base64_selftest();
            x += banner1_selftest();
            x += output_selftest();
            x += siphash24_selftest();
            x += ntp_selftest();
            x += snmp_selftest();
            x += payloads_udp_selftest();
            x += blackrock_selftest();
            x += rawsock_selftest();
            x += lcg_selftest();
            x += template_selftest();
            x += ranges_selftest();
            x += rangefile_selftest();
            x += pixie_time_selftest();
            x += rte_ring_selftest();
            x += mainconf_selftest();
            x += zeroaccess_selftest();
            x += nmapserviceprobes_selftest();
            x += rstfilter_selftest();


            if (x != 0) {

                fprintf(stderr, "regression test: failed :( \n");
                return 1;
            } else {
                fprintf(stderr, "regression test: success!\n");
                return 0;
            }
        }
        break;
    }


    return 0;
}
