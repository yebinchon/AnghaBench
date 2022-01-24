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
 int /*<<< orphan*/  ERR_str_libraries ; 
 int /*<<< orphan*/  ERR_str_reasons ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  do_err_strings_init ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err_string_init ; 

int FUNC3(void)
{
#ifndef OPENSSL_NO_ERR
    if (!FUNC0(&err_string_init, do_err_strings_init))
        return 0;

    FUNC2(ERR_str_libraries);
    FUNC2(ERR_str_reasons);
    FUNC1();
#endif
    return 1;
}