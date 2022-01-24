#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * namenum; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ OSSL_NAMEMAP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namenum_cmp ; 
 int /*<<< orphan*/  namenum_hash ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

OSSL_NAMEMAP *FUNC4(void)
{
    OSSL_NAMEMAP *namemap;

    if ((namemap = FUNC1(sizeof(*namemap))) != NULL
        && (namemap->lock = FUNC0()) != NULL
        && (namemap->namenum =
            FUNC2(namenum_hash, namenum_cmp)) != NULL)
        return namemap;

    FUNC3(namemap);
    return NULL;
}