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
struct SmackMatches {size_t* m_ids; unsigned int m_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,unsigned int,size_t const) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(
    struct SmackMatches *row,
    const size_t *new_ids,
    unsigned new_count)
{
    size_t *total_ids;
    unsigned total_count;
    size_t *old_ids = row->m_ids;
    unsigned old_count = row->m_count;
    unsigned i;

    /* Allocate space for both lists */
    total_ids = (size_t *)FUNC4((old_count + new_count)*sizeof(*total_ids));
    if (total_ids == NULL) {
        FUNC1(stderr, "%s: out of memory error\n", "smack");
        FUNC0(1);
    }

    /* Copy existing matches */
    for (i=0; i<old_count; i++)
        total_ids[i] = old_ids[i];
    total_count = old_count;

    /* Copy new matches, if needed */
    for (i=0; i<new_count; i++) {
        if (!FUNC3(old_ids, old_count, new_ids[i]))
            total_ids[total_count++] = new_ids[i];
    }

    /* Free the old list */
    if (row->m_ids) {
        FUNC2(row->m_ids);
    }

    /* Replace old list with total combined list */
    row->m_ids = total_ids;
    row->m_count = total_count;
}