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
typedef  unsigned long long kernel_uint_t ;
typedef  int /*<<< orphan*/  RRDVAR ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  localhost ; 
 int /*<<< orphan*/  netdata_configured_host_prefix ; 
 scalar_t__ FUNC0 (char*,unsigned long long*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static kernel_uint_t FUNC6(void) {
    static char *filename = NULL;
    static RRDVAR *tcp_max_orphans_var = NULL;

    if(FUNC5(!filename)) {
        char buffer[FILENAME_MAX + 1];
        FUNC3(buffer, FILENAME_MAX, "%s/proc/sys/net/ipv4/tcp_max_orphans", netdata_configured_host_prefix);
        filename = FUNC4(buffer);
    }

    unsigned long long tcp_max_orphans = 0;
    if(FUNC0(filename, &tcp_max_orphans) == 0) {

        if(FUNC5(!tcp_max_orphans_var))
            tcp_max_orphans_var = FUNC1(localhost, "tcp_max_orphans");

        FUNC2(localhost, tcp_max_orphans_var, tcp_max_orphans);
        return  tcp_max_orphans;
    }

    return 0;
}