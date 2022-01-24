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
struct ResetFilter {struct ResetFilter* buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ResetFilter*) ; 

void
FUNC1(struct ResetFilter *rf)
{
    if (rf == NULL)
        return;
    FUNC0(rf->buckets);
    FUNC0(rf);
}