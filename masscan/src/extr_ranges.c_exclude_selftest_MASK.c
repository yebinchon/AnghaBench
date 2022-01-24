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
struct RangeList {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct RangeList*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct RangeList*,struct RangeList*) ; 
 int /*<<< orphan*/  FUNC3 (struct RangeList*,struct RangeList*) ; 
 int /*<<< orphan*/  FUNC4 (struct RangeList*,struct RangeList*) ; 
 int /*<<< orphan*/  FUNC5 (struct RangeList*,struct RangeList*) ; 
 int /*<<< orphan*/  FUNC6 (struct RangeList*) ; 

__attribute__((used)) static int
FUNC7(void)
{
    unsigned seed = 0;
    struct RangeList includes1 = {0};
    struct RangeList includes2 = {0};
    struct RangeList excludes = {0};
    unsigned addr = 0;
    size_t i;
    
    /* In my initial tests, simply using 10 as the count seems to
     * catch all the combinations. On the other hand, 100,000 takes
     * a long time to complete, because it's O(n2) quadratic time.
     * Therefore, I pick a thousand as a compromise, likely to catch
     * any possibility, yet fast enough to complete quickly even on
     * a Raspberry Pi */
    static const unsigned MAXCOUNT = 1000;
    
    /* Fill the include list. This is designed to make short ranges
     * that are a short distance apart. We'll do the same for the
     * same for the excludes, using a different random seed. This
     * should create two lists that have lots and lots of overlapping
     * and non-overlapping ranges.
     */
    seed = 0;
    addr = 0;
    for (i=0; i<MAXCOUNT; i++) {
        unsigned begin;
        unsigned end;
        
        addr += FUNC0(&seed) & 0xF;
        begin = addr;
        addr += FUNC0(&seed) & 0xF;
        end = addr;
        
        FUNC1(&includes1, begin, end);
    }
    FUNC6(&includes1);
    
    /* Fill the exlcude list, using the same algorithm as above for
     * includes, but now with a different seed. This creates lots of
     * conflicts. */
    seed = 1;
    addr = 0;
    for (i=0; i<MAXCOUNT; i++) {
        unsigned begin;
        unsigned end;
        
        addr += FUNC0(&seed) & 0xF;
        begin = addr;
        addr += FUNC0(&seed) & 0xF;
        end = addr;
        
        FUNC1(&excludes, begin, end);
    }
    FUNC6(&excludes);
    
    /* Now create a copy of the include list, because we want to
     * apply excludes using two different algorithms to see if the
     * results match */
    FUNC2(&includes2, &includes1);
    if (!FUNC5(&includes1, &includes2))
        return 1;

    
    /* Now apply the exclude alogirthms, both new and old, to the
     * the include lists. */
    FUNC3(&includes1, &excludes);
    FUNC4(&includes2, &excludes);
    if (!FUNC5(&includes1, &includes2))
        return 1; /* fail */
    
    /* If we reach this point, the selftest has succeeded */
    return 0;

}