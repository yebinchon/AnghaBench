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
struct list_entry {int dummy; } ;
struct TYPE_5__ {void const* state; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; scalar_t__ do_close; TYPE_1__ delegation; } ;
typedef  TYPE_2__ nfs41_open_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (struct list_entry const*) ; 

__attribute__((used)) static int FUNC4(const struct list_entry *entry, const void *value)
{
    nfs41_open_state *open = FUNC3(entry);
    int result = -1;

    /* open must match the delegation and have state to reclaim */
    FUNC0(&open->lock);
    if (open->delegation.state != value) goto out;
    if (open->do_close && !FUNC2(open)) goto out;
    result = 0;
out:
    FUNC1(&open->lock);
    return result;
}