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
struct TYPE_3__ {int /*<<< orphan*/  rwlock; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ avl_tree_lock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(avl_tree_lock *t) {
#ifndef AVL_WITHOUT_PTHREADS
#ifdef AVL_LOCK_WITH_MUTEX
    netdata_mutex_lock(&t->mutex);
#else
    FUNC1(&t->rwlock);
#endif
#endif /* AVL_WITHOUT_PTHREADS */
}