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
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  namenum; scalar_t__ stored; } ;
typedef  TYPE_1__ OSSL_NAMEMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  namenum_free ; 

void FUNC4(OSSL_NAMEMAP *namemap)
{
    if (namemap == NULL || namemap->stored)
        return;

    FUNC2(namemap->namenum, namenum_free);
    FUNC3(namemap->namenum);

    FUNC0(namemap->lock);
    FUNC1(namemap);
}