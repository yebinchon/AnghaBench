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
struct registered_ept_entry {int /*<<< orphan*/  entry; int /*<<< orphan*/  address; int /*<<< orphan*/  endpoint; int /*<<< orphan*/  protseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct registered_ept_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct registered_ept_entry *entry)
{
    FUNC2(entry->protseq);
    FUNC2(entry->endpoint);
    FUNC2(entry->address);
    FUNC3(&entry->entry);
    FUNC1(FUNC0(), 0, entry);
}