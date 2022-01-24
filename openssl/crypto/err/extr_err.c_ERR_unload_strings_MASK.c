#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ error; } ;
typedef  TYPE_1__ ERR_STRING_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_err_strings_init ; 
 int /*<<< orphan*/  err_string_init ; 
 int /*<<< orphan*/  err_string_lock ; 
 int /*<<< orphan*/  int_error_hash ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC4(int lib, ERR_STRING_DATA *str)
{
    if (!FUNC2(&err_string_init, do_err_strings_init))
        return 0;

    FUNC1(err_string_lock);
    /*
     * We don't need to ERR_PACK the lib, since that was done (to
     * the table) when it was loaded.
     */
    for (; str->error; str++)
        (void)FUNC3(int_error_hash, str);
    FUNC0(err_string_lock);

    return 1;
}