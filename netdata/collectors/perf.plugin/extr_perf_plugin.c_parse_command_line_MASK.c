#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct perf_event {scalar_t__ id; scalar_t__ disabled; } ;

/* Variables and functions */
 size_t EV_ID_ALIGNMENT_FAULTS ; 
 size_t EV_ID_BRANCH_INSTRUCTIONS ; 
 size_t EV_ID_BRANCH_MISSES ; 
 size_t EV_ID_BUS_CYCLES ; 
 size_t EV_ID_CACHE_MISSES ; 
 size_t EV_ID_CACHE_REFERENCES ; 
 size_t EV_ID_CPU_CYCLES ; 
 size_t EV_ID_CPU_MIGRATIONS ; 
 size_t EV_ID_DTLB_READ_ACCESS ; 
 size_t EV_ID_DTLB_READ_MISS ; 
 size_t EV_ID_DTLB_WRITE_ACCESS ; 
 size_t EV_ID_DTLB_WRITE_MISS ; 
 size_t EV_ID_EMULATION_FAULTS ; 
 scalar_t__ EV_ID_END ; 
 size_t EV_ID_INSTRUCTIONS ; 
 size_t EV_ID_ITLB_READ_ACCESS ; 
 size_t EV_ID_ITLB_READ_MISS ; 
 size_t EV_ID_L1D_PREFETCH_ACCESS ; 
 size_t EV_ID_L1D_READ_ACCESS ; 
 size_t EV_ID_L1D_READ_MISS ; 
 size_t EV_ID_L1D_WRITE_ACCESS ; 
 size_t EV_ID_L1D_WRITE_MISS ; 
 size_t EV_ID_L1I_READ_ACCESS ; 
 size_t EV_ID_L1I_READ_MISS ; 
 size_t EV_ID_LL_READ_ACCESS ; 
 size_t EV_ID_LL_READ_MISS ; 
 size_t EV_ID_LL_WRITE_ACCESS ; 
 size_t EV_ID_LL_WRITE_MISS ; 
 size_t EV_ID_PBU_READ_ACCESS ; 
 size_t EV_ID_REF_CPU_CYCLES ; 
 size_t EV_ID_STALLED_CYCLES_BACKEND ; 
 size_t EV_ID_STALLED_CYCLES_FRONTEND ; 
 char* VERSION ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int freq ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 
 struct perf_event* perf_events ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int update_every ; 

void FUNC8(int argc, char **argv) {
    int i, plugin_enabled = 0;

    for(i = 1; i < argc ; i++) {
        if(FUNC4(*argv[i]) && !freq) {
            int n = FUNC6(argv[i]);
            if(n > 0 && n < 86400) {
                freq = n;
                continue;
            }
        }
        else if(FUNC7("version", argv[i]) == 0 || FUNC7("-version", argv[i]) == 0 || FUNC7("--version", argv[i]) == 0 || FUNC7("-v", argv[i]) == 0 || FUNC7("-V", argv[i]) == 0) {
            FUNC5("perf.plugin %s\n", VERSION);
            FUNC1(0);
        }
        else if(FUNC7("all", argv[i]) == 0) {
            struct perf_event *current_event = NULL;

            for(current_event = &perf_events[0]; current_event->id != EV_ID_END; current_event++)
                current_event->disabled = 0;

            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("cycles", argv[i]) == 0) {
            perf_events[EV_ID_CPU_CYCLES].disabled = 0;
            perf_events[EV_ID_REF_CPU_CYCLES].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("instructions", argv[i]) == 0) {
            perf_events[EV_ID_INSTRUCTIONS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("branch", argv[i]) == 0) {
            perf_events[EV_ID_BRANCH_INSTRUCTIONS].disabled = 0;
            perf_events[EV_ID_BRANCH_MISSES].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("cache", argv[i]) == 0) {
            perf_events[EV_ID_CACHE_REFERENCES].disabled = 0;
            perf_events[EV_ID_CACHE_MISSES].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("bus", argv[i]) == 0) {
            perf_events[EV_ID_BUS_CYCLES].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("stalled", argv[i]) == 0) {
            perf_events[EV_ID_STALLED_CYCLES_FRONTEND].disabled = 0;
            perf_events[EV_ID_STALLED_CYCLES_BACKEND].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("migrations", argv[i]) == 0) {
            perf_events[EV_ID_CPU_MIGRATIONS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("alighnment", argv[i]) == 0) {
            perf_events[EV_ID_ALIGNMENT_FAULTS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("emulation", argv[i]) == 0) {
            perf_events[EV_ID_EMULATION_FAULTS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("L1D", argv[i]) == 0) {
            perf_events[EV_ID_L1D_READ_ACCESS].disabled = 0;
            perf_events[EV_ID_L1D_READ_MISS].disabled = 0;
            perf_events[EV_ID_L1D_WRITE_ACCESS].disabled = 0;
            perf_events[EV_ID_L1D_WRITE_MISS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("L1D-prefetch", argv[i]) == 0) {
            perf_events[EV_ID_L1D_PREFETCH_ACCESS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("L1I", argv[i]) == 0) {
            perf_events[EV_ID_L1I_READ_ACCESS].disabled = 0;
            perf_events[EV_ID_L1I_READ_MISS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("LL", argv[i]) == 0) {
            perf_events[EV_ID_LL_READ_ACCESS].disabled = 0;
            perf_events[EV_ID_LL_READ_MISS].disabled = 0;
            perf_events[EV_ID_LL_WRITE_ACCESS].disabled = 0;
            perf_events[EV_ID_LL_WRITE_MISS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("DTLB", argv[i]) == 0) {
            perf_events[EV_ID_DTLB_READ_ACCESS].disabled = 0;
            perf_events[EV_ID_DTLB_READ_MISS].disabled = 0;
            perf_events[EV_ID_DTLB_WRITE_ACCESS].disabled = 0;
            perf_events[EV_ID_DTLB_WRITE_MISS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("ITLB", argv[i]) == 0) {
            perf_events[EV_ID_ITLB_READ_ACCESS].disabled = 0;
            perf_events[EV_ID_ITLB_READ_MISS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("PBU", argv[i]) == 0) {
            perf_events[EV_ID_PBU_READ_ACCESS].disabled = 0;
            plugin_enabled = 1;
            continue;
        }
        else if(FUNC7("debug", argv[i]) == 0) {
            debug = 1;
            continue;
        }
        else if(FUNC7("-h", argv[i]) == 0 || FUNC7("--help", argv[i]) == 0) {
            FUNC2(stderr,
                    "\n"
                    " netdata perf.plugin %s\n"
                    " Copyright (C) 2019 Netdata Inc.\n"
                    " Released under GNU General Public License v3 or later.\n"
                    " All rights reserved.\n"
                    "\n"
                    " This program is a data collector plugin for netdata.\n"
                    "\n"
                    " Available command line options:\n"
                    "\n"
                    "  COLLECTION_FREQUENCY    data collection frequency in seconds\n"
                    "                          minimum: %d\n"
                    "\n"
                    "  all                     enable all charts\n"
                    "\n"
                    "  cycles                  enable CPU cycles chart\n"
                    "\n"
                    "  instructions            enable Instructions chart\n"
                    "\n"
                    "  branch                  enable Branch instructions chart\n"
                    "\n"
                    "  cache                   enable Cache operations chart\n"
                    "\n"
                    "  bus                     enable Bus cycles chart\n"
                    "\n"
                    "  stalled                 enable Stalled frontend and backend cycles chart\n"
                    "\n"
                    "  migrations              enable CPU migrations chart\n"
                    "\n"
                    "  alighnment              enable Alignment faults chart\n"
                    "\n"
                    "  emulation               enable Emulation faults chart\n"
                    "\n"
                    "  L1D                     enable L1D cache operations chart\n"
                    "\n"
                    "  L1D-prefetch            enable L1D prefetch cache operations chart\n"
                    "\n"
                    "  L1I                     enable L1I cache operations chart\n"
                    "\n"
                    "  LL                      enable LL cache operations chart\n"
                    "\n"
                    "  DTLB                    enable DTLB cache operations chart\n"
                    "\n"
                    "  ITLB                    enable ITLB cache operations chart\n"
                    "\n"
                    "  PBU                     enable PBU cache operations chart\n"
                    "\n"
                    "  debug                   enable verbose output\n"
                    "                          default: disabled\n"
                    "\n"
                    "  -v\n"
                    "  -V\n"
                    "  --version               print version and exit\n"
                    "\n"
                    "  -h\n"
                    "  --help                  print this message and exit\n"
                    "\n"
                    " For more information:\n"
                    " https://github.com/netdata/netdata/tree/master/collectors/perf.plugin\n"
                    "\n"
                    , VERSION
                    , update_every
            );
            FUNC1(1);
        }

        FUNC0("ignoring parameter '%s'", argv[i]);
    }

    if(!plugin_enabled){
        FUNC3("no charts enabled - nothing to do.");
        FUNC5("DISABLE\n");
        FUNC1(1);
    }
}