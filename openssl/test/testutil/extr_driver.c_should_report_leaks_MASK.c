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
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(void)
{
    /*
     * When compiled with enable-crypto-mdebug, OPENSSL_DEBUG_MEMORY=0
     * can be used to disable leak checking at runtime.
     * Note this only works when running the test binary manually;
     * the test harness always enables OPENSSL_DEBUG_MEMORY.
     */
    char *mem_debug_env = FUNC0("OPENSSL_DEBUG_MEMORY");

    return mem_debug_env == NULL
        || (FUNC1(mem_debug_env, "0") && FUNC1(mem_debug_env, ""));
}