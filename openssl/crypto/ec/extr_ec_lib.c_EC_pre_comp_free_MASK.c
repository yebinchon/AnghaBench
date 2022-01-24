#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ec; int /*<<< orphan*/  nistp521; int /*<<< orphan*/  nistp256; int /*<<< orphan*/  nistp224; int /*<<< orphan*/  nistz256; } ;
struct TYPE_5__ {int pre_comp_type; TYPE_1__ pre_comp; } ;
typedef  TYPE_2__ EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  PCT_ec 133 
#define  PCT_nistp224 132 
#define  PCT_nistp256 131 
#define  PCT_nistp521 130 
#define  PCT_nistz256 129 
#define  PCT_none 128 

void FUNC5(EC_GROUP *group)
{
    switch (group->pre_comp_type) {
    case PCT_none:
        break;
    case PCT_nistz256:
#ifdef ECP_NISTZ256_ASM
        EC_nistz256_pre_comp_free(group->pre_comp.nistz256);
#endif
        break;
#ifndef OPENSSL_NO_EC_NISTP_64_GCC_128
    case PCT_nistp224:
        FUNC1(group->pre_comp.nistp224);
        break;
    case PCT_nistp256:
        FUNC2(group->pre_comp.nistp256);
        break;
    case PCT_nistp521:
        FUNC3(group->pre_comp.nistp521);
        break;
#else
    case PCT_nistp224:
    case PCT_nistp256:
    case PCT_nistp521:
        break;
#endif
    case PCT_ec:
        FUNC0(group->pre_comp.ec);
        break;
    }
    group->pre_comp.ec = NULL;
}