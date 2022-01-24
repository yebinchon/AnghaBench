#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ root; } ;
struct TYPE_6__ {TYPE_1__ avl_tree; } ;
typedef  TYPE_2__ avl_tree_lock ;
typedef  int /*<<< orphan*/  RRDVAR ;
typedef  int /*<<< orphan*/  RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(RRDHOST *host, avl_tree_lock *tree_lock) {
    // This is not bullet proof - avl should support some means to destroy it
    // with a callback for each item already in the index

    RRDVAR *rv, *last = NULL;
    while((rv = (RRDVAR *)tree_lock->avl_tree.root)) {
        if(FUNC2(rv == last)) {
            FUNC0("RRDVAR: INTERNAL ERROR: Cannot cleanup tree of RRDVARs");
            break;
        }
        last = rv;
        FUNC1(host, tree_lock, rv);
    }
}