#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ta_header {scalar_t__ canary; TYPE_1__* leak_prev; TYPE_2__* leak_next; } ;
struct TYPE_4__ {TYPE_1__* leak_prev; } ;
struct TYPE_3__ {TYPE_2__* leak_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ta_header*) ; 
 int /*<<< orphan*/  ta_dbg_mutex ; 

__attribute__((used)) static void FUNC3(struct ta_header *h)
{
    FUNC2(h);
    if (h->leak_next) { // assume checking for !=NULL invariant ok without lock
        FUNC0(&ta_dbg_mutex);
        h->leak_next->leak_prev = h->leak_prev;
        h->leak_prev->leak_next = h->leak_next;
        FUNC1(&ta_dbg_mutex);
        h->leak_next = h->leak_prev = NULL;
    }
    h->canary = 0;
}