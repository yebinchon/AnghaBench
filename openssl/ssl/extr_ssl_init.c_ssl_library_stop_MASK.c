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

/* Variables and functions */
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ssl_base_inited ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ ssl_strings_inited ; 
 int stopped ; 

__attribute__((used)) static void FUNC3(void)
{
    /* Might be explicitly called and also by atexit */
    if (stopped)
        return;
    stopped = 1;

    if (ssl_base_inited) {
#ifndef OPENSSL_NO_COMP
        FUNC0(INIT, "ssl_library_stop: "
                   "ssl_comp_free_compression_methods_int()\n");
        FUNC2();
#endif
    }

    if (ssl_strings_inited) {
        FUNC0(INIT, "ssl_library_stop: err_free_strings_int()\n");
        /*
         * If both crypto and ssl error strings are inited we will end up
         * calling err_free_strings_int() twice - but that's ok. The second
         * time will be a no-op. It's easier to do that than to try and track
         * between the two libraries whether they have both been inited.
         */
        FUNC1();
    }
}