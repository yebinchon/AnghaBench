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
typedef  int /*<<< orphan*/  RRDVAR ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  localhost ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 unsigned long long FUNC5 (char*,char**,int) ; 
 unsigned long long FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(void) {
    static char *filename = NULL;
    static RRDVAR *tcp_mem_low_threshold = NULL,
                  *tcp_mem_pressure_threshold = NULL,
                  *tcp_mem_high_threshold = NULL;

    if(FUNC7(!tcp_mem_low_threshold)) {
        tcp_mem_low_threshold      = FUNC1(localhost, "tcp_mem_low");
        tcp_mem_pressure_threshold = FUNC1(localhost, "tcp_mem_pressure");
        tcp_mem_high_threshold     = FUNC1(localhost, "tcp_mem_high");
    }

    if(FUNC7(!filename)) {
        char buffer[FILENAME_MAX + 1];
        FUNC3(buffer, FILENAME_MAX, "%s/proc/sys/net/ipv4/tcp_mem", netdata_configured_host_prefix);
        filename = FUNC4(buffer);
    }

    char buffer[200 + 1], *start, *end;
    if(FUNC0(filename, buffer, 200) != 0) return 1;
    buffer[200] = '\0';

    unsigned long long low = 0, pressure = 0, high = 0;

    start = buffer;
    low = FUNC5(start, &end, 10);

    start = end;
    pressure = FUNC5(start, &end, 10);

    start = end;
    high = FUNC5(start, &end, 10);

    // fprintf(stderr, "TCP MEM low = %llu, pressure = %llu, high = %llu\n", low, pressure, high);

    FUNC2(localhost, tcp_mem_low_threshold, low * FUNC6(_SC_PAGESIZE) / 1024.0);
    FUNC2(localhost, tcp_mem_pressure_threshold, pressure * FUNC6(_SC_PAGESIZE) / 1024.0);
    FUNC2(localhost, tcp_mem_high_threshold, high * FUNC6(_SC_PAGESIZE) / 1024.0);

    return 0;
}