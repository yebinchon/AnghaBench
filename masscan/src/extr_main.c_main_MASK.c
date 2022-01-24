#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_11__ {scalar_t__ index; } ;
struct TYPE_9__ {int /*<<< orphan*/  directory; } ;
struct TYPE_10__ {int is_show_open; int is_status_updates; TYPE_3__ rotate; } ;
struct TYPE_8__ {int /*<<< orphan*/  oproto; int /*<<< orphan*/  udp; } ;
struct TYPE_7__ {int one; int of; } ;
struct Masscan {int blackrock_rounds; int wait; double max_rate; int nic_count; int min_packet_size; int is_capture_cert; int is_readscan; int op; TYPE_6__* nic; TYPE_5__ resume; int /*<<< orphan*/  ports; int /*<<< orphan*/  targets; int /*<<< orphan*/  exclude_port; int /*<<< orphan*/  exclude_ip; scalar_t__ is_scripting; TYPE_4__ output; TYPE_2__ payloads; TYPE_1__ shard; int /*<<< orphan*/  seed; } ;
typedef  int /*<<< orphan*/  WSADATA ;
struct TYPE_12__ {int /*<<< orphan*/  ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
#define  Operation_Benchmark 136 
#define  Operation_DebugIF 135 
#define  Operation_Default 134 
#define  Operation_ListScan 133 
#define  Operation_List_Adapters 132 
#define  Operation_ReadRange 131 
#define  Operation_ReadScan 130 
#define  Operation_Scan 129 
#define  Operation_Selftest 128 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  global_now ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct Masscan*) ; 
 int /*<<< orphan*/  FUNC13 (struct Masscan*) ; 
 int FUNC14 (struct Masscan*) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct Masscan*,int,char**) ; 
 scalar_t__ FUNC17 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC18 (struct Masscan*) ; 
 int /*<<< orphan*/  FUNC19 (struct Masscan*,char*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct Masscan*,int /*<<< orphan*/ ,int) ; 
 int FUNC23 () ; 
 int FUNC24 () ; 
 int FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int FUNC28 () ; 
 scalar_t__ FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (char*,unsigned int) ; 
 int FUNC34 () ; 
 int FUNC35 () ; 
 int FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct Masscan*,unsigned int,unsigned int,char**) ; 
 int FUNC44 () ; 
 int FUNC45 () ; 
 int /*<<< orphan*/  FUNC46 (struct Masscan*) ; 
 int FUNC47 () ; 
 int FUNC48 () ; 
 int /*<<< orphan*/  FUNC49 () ; 
 int FUNC50 () ; 
 int /*<<< orphan*/  FUNC51 () ; 
 int FUNC52 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC53 (char*,char*) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC55 () ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usec_start ; 
 int /*<<< orphan*/  FUNC57 () ; 
 int FUNC58 () ; 

int FUNC59(int argc, char *argv[])
{
    struct Masscan masscan[1];
    unsigned i;
    
    usec_start = FUNC31();
#if defined(WIN32)
    {WSADATA x; WSAStartup(0x101, &x);}
#endif

    global_now = FUNC56(0);

    /* Set system to report debug information on crash */
    {
        int is_backtrace = 1;
        for (i=1; i<(unsigned)argc; i++) {
            if (FUNC53(argv[i], "--nobacktrace") == 0)
                is_backtrace = 0;
        }
        if (is_backtrace)
            FUNC30(argv[0]);
    }
    
    /*
     * Initialize those defaults that aren't zero
     */
    FUNC22(masscan, 0, sizeof(*masscan));
    masscan->blackrock_rounds = 4;
    masscan->output.is_show_open = 1; /* default: show syn-ack, not rst */
    masscan->output.is_status_updates = 1; /* default: show status updates */
    masscan->seed = FUNC10(); /* entropy for randomness */
    masscan->wait = 10; /* how long to wait for responses when done */
    masscan->max_rate = 100.0; /* max rate = hundred packets-per-second */
    masscan->nic_count = 1;
    masscan->shard.one = 1;
    masscan->shard.of = 1;
    masscan->min_packet_size = 60;
    masscan->payloads.udp = FUNC27();
    masscan->payloads.oproto = FUNC26();
    FUNC54(   masscan->output.rotate.directory,
                sizeof(masscan->output.rotate.directory),
                ".");
    masscan->is_capture_cert = 1;

    /*
     * Pre-parse the command-line
     */
    if (FUNC17("--readscan", argc, argv)) {
        masscan->is_readscan = 1;
    }

    /*
     * On non-Windows systems, read the defaults from the file in
     * the /etc directory. These defaults will contain things
     * like the output directory, max packet rates, and so on. Most
     * importantly, the master "--excludefile" might be placed here,
     * so that blacklisted ranges won't be scanned, even if the user
     * makes a mistake
     */
#if !defined(WIN32)
    if (!masscan->is_readscan) {
        if (FUNC2("/etc/masscan/masscan.conf", 0) == 0) {
            FUNC19(masscan, "/etc/masscan/masscan.conf");
        }
    }
#endif

    /*
     * Read in the configuration from the command-line. We are looking for
     * either options or a list of IPv4 address ranges.
     */
    FUNC16(masscan, argc, argv);
    
    /*
     * Load database files like "nmap-payloads" and "nmap-service-probes"
     */
    FUNC18(masscan);

    /*
     * Load the scripting engine if needed and run those that were
     * specified.
     */
    if (masscan->is_scripting)
        FUNC46(masscan);

    /* We need to do a separate "raw socket" initialization step. This is
     * for Windows and PF_RING. */
    if (FUNC29() != 0)
        FUNC0(2, "libpcap: failed to load\n");
    FUNC39();

    /* Init some protocol parser data structures */
    FUNC51();
    FUNC57();


    /*
     * Apply excludes. People ask us not to scan them, so we maintain a list
     * of their ranges, and when doing wide scans, add the exclude list to
     * prevent them from being scanned.
     */
    {
        uint64_t range = FUNC36(&masscan->targets) * FUNC36(&masscan->ports);
        uint64_t range2;
        FUNC37(&masscan->targets, &masscan->exclude_ip);
        FUNC37(&masscan->ports, &masscan->exclude_port);
        //rangelist_remove_range2(&masscan->targets, range_parse_ipv4("224.0.0.0/4", 0, 0));

        range2 = FUNC36(&masscan->targets) * FUNC36(&masscan->ports);

        if (range != 0 && range2 == 0) {
            FUNC0(0, "FAIL: no ranges left to scan\n");
            FUNC0(0, "   ...all ranges overlapped something in an excludefile range\n");
            FUNC8(1);
        }

        if (range2 != range && masscan->resume.index) {
            FUNC0(0, "FAIL: Attempted to add additional 'exclude' ranges after scan start.\n");
            FUNC0(0, "   ...This messes things up the scan randomization, so you have to restart scan\n");
            FUNC8(1);
        }
    }



    /*
     * Once we've read in the configuration, do the operation that was
     * specified
     */
    switch (masscan->op) {
    case Operation_Default:
        /* Print usage info and exit */
        FUNC20();
        break;

    case Operation_Scan:
        /*
         * THIS IS THE NORMAL THING
         */
        return FUNC14(masscan);

    case Operation_ListScan:
        /* Create a randomized list of IP addresses */
        FUNC12(masscan);
        return 0;

    case Operation_List_Adapters:
        /* List the network adapters we might want to use for scanning */
        FUNC40();
        break;

    case Operation_DebugIF:
        for (i=0; i<masscan->nic_count; i++)
            FUNC42(masscan->nic[i].ifname);
        return 0;

    case Operation_ReadRange:
        FUNC13(masscan);
        return 0;

    case Operation_ReadScan:
        {
            unsigned start;
            unsigned stop;

            /* find first file */
            for (start=1; start<(unsigned)argc; start++) {
                if (FUNC21(argv[start], "--readscan", 10) == 0) {
                    start++;
                    break;
                }
            }

            /* find last file */
            for (stop=start+1; stop<(unsigned)argc && argv[stop][0] != '-'; stop++)
                ;

            /*
             * read the binary files, and output them again depending upon
             * the output parameters
             */
            FUNC43(masscan, start, stop, argv);

        }
        break;

    case Operation_Benchmark:
        FUNC33("=== benchmarking (%u-bits) ===\n\n", (unsigned)sizeof(void*)*8);
        FUNC6(masscan->blackrock_rounds);
        FUNC5(masscan->blackrock_rounds);
        FUNC49();
        FUNC8(1);
        break;

    case Operation_Selftest:
        /*
         * Do a regression test of all the significant units
         */
        {
            int x = 0;
            x += FUNC34();
            x += FUNC50();
            x += FUNC47();
            x += FUNC4();
            x += FUNC3();
            x += FUNC25();
            x += FUNC48();
            x += FUNC24();
            x += FUNC52();
            x += FUNC28();
            x += FUNC7();
            x += FUNC41();
            x += FUNC11();
            x += FUNC55();
            x += FUNC38();
            x += FUNC35();
            x += FUNC32();
            x += FUNC45();
            x += FUNC15();
            x += FUNC58();
            x += FUNC23();
            x += FUNC44();


            if (x != 0) {
                /* one of the selftests failed, so return error */
                FUNC9(stderr, "regression test: failed :( \n");
                return 1;
            } else {
                FUNC9(stderr, "regression test: success!\n");
                return 0;
            }
        }
        break;
    }


    return 0;
}