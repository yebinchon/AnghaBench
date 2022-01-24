#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t uint32_t ;
typedef  void pthread_mutex_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_lock_hashpower ; 
 int /*<<< orphan*/ * item_locks ; 
 scalar_t__ FUNC1 (void*) ; 

void *FUNC2(uint32_t hv) {
    pthread_mutex_t *lock = &item_locks[hv & FUNC0(item_lock_hashpower)];
    if (FUNC1(lock) == 0) {
        return lock;
    }
    return NULL;
}