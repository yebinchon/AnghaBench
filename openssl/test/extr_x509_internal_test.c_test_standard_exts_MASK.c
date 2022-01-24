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
struct TYPE_4__ {int ext_nid; } ;
typedef  TYPE_1__ X509V3_EXT_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_1__**) ; 
 size_t STANDARD_EXTENSION_COUNT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__** standard_exts ; 

__attribute__((used)) static int FUNC4(void)
{
    size_t i;
    int prev = -1, good = 1;
    const X509V3_EXT_METHOD **tmp;

    tmp = standard_exts;
    for (i = 0; i < FUNC1(standard_exts); i++, tmp++) {
        if ((*tmp)->ext_nid < prev)
            good = 0;
        prev = (*tmp)->ext_nid;

    }
    if (!good) {
        tmp = standard_exts;
        FUNC2("Extensions out of order!");
        for (i = 0; i < STANDARD_EXTENSION_COUNT; i++, tmp++)
            FUNC3("%d : %s", (*tmp)->ext_nid, FUNC0((*tmp)->ext_nid));
    }
    return good;
}