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
struct rot_entry {struct rot_entry* moniker_data; struct rot_entry* moniker; struct rot_entry* object; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rot_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct rot_entry *rot_entry)
{
    if (!FUNC2(&rot_entry->refs))
    {
        FUNC1(FUNC0(), 0, rot_entry->object);
        FUNC1(FUNC0(), 0, rot_entry->moniker);
        FUNC1(FUNC0(), 0, rot_entry->moniker_data);
        FUNC1(FUNC0(), 0, rot_entry);
    }
}