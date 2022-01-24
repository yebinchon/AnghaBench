#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* family; int /*<<< orphan*/  use_count; int /*<<< orphan*/  rrdvar_root_index; int /*<<< orphan*/  hash_family; } ;
typedef  int /*<<< orphan*/  RRDHOST ;
typedef  TYPE_1__ RRDFAMILY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rrdvar_compare ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 

RRDFAMILY *FUNC7(RRDHOST *host, const char *id) {
    RRDFAMILY *rc = FUNC4(host, id, 0);
    if(!rc) {
        rc = FUNC1(1, sizeof(RRDFAMILY));

        rc->family = FUNC6(id);
        rc->hash_family = FUNC5(rc->family);

        // initialize the variables index
        FUNC0(&rc->rrdvar_root_index, rrdvar_compare);

        RRDFAMILY *ret = FUNC3(host, rc);
        if(ret != rc)
            FUNC2("RRDFAMILY: INTERNAL ERROR: Expected to INSERT RRDFAMILY '%s' into index, but inserted '%s'.", rc->family, (ret)?ret->family:"NONE");
    }

    rc->use_count++;
    return rc;
}