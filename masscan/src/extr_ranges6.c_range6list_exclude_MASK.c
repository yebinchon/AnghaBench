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
typedef  int /*<<< orphan*/  uint64_t ;
struct Range6List {unsigned int count; struct Range6* list; } ;
struct Range6 {int /*<<< orphan*/  end; int /*<<< orphan*/  begin; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Range6List*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC2(  struct Range6List *targets,
                  const struct Range6List *excludes)
{
    uint64_t count = 0;
    unsigned i;
    
    for (i=0; i<excludes->count; i++) {
        struct Range6 range = excludes->list[i];
        count += FUNC0(range.end, range.begin) + 1ULL;
        FUNC1(targets, range.begin, range.end);
    }
    
    return count;
}