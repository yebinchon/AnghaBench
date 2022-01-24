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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSLTEST_str_reasons ; 
 int error_loaded ; 
 scalar_t__ lib_code ; 

__attribute__((used)) static int FUNC2(void)
{
    if (lib_code == 0)
        lib_code = FUNC0();

    if (!error_loaded) {
#ifndef OPENSSL_NO_ERR
        FUNC1(lib_code, OSSLTEST_str_reasons);
#endif
        error_loaded = 1;
    }
    return 1;
}