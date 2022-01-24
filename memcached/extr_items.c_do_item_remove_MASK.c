#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int it_flags; scalar_t__ refcount; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  nkey; } ;
typedef  TYPE_1__ item ;

/* Variables and functions */
 int ITEM_SLABBED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

void FUNC5(item *it) {
    FUNC1(FUNC0(it), it->nkey, it->nbytes);
    FUNC2((it->it_flags & ITEM_SLABBED) == 0);
    FUNC2(it->refcount > 0);

    if (FUNC4(it) == 0) {
        FUNC3(it);
    }
}