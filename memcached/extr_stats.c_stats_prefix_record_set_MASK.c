#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  num_sets; } ;
typedef  TYPE_1__ PREFIX_STATS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (char const*,size_t const) ; 

void FUNC3(const char *key, const size_t nkey) {
    PREFIX_STATS *pfs;

    FUNC0();
    pfs = FUNC2(key, nkey);
    if (NULL != pfs) {
        pfs->num_sets++;
    }
    FUNC1();
}