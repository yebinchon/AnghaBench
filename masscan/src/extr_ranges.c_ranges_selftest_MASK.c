#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  targets ;
struct RangeList {int count; TYPE_1__* list; int /*<<< orphan*/  member_0; } ;
struct Range {int begin; int end; } ;
struct TYPE_2__ {int begin; int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct RangeList*,int /*<<< orphan*/ ,int) ; 
 struct Range FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct RangeList*,struct Range) ; 
 int /*<<< orphan*/  FUNC7 (struct RangeList*,char*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct RangeList*) ; 
 int /*<<< orphan*/  FUNC9 (struct RangeList*,struct Range) ; 
 int /*<<< orphan*/  FUNC10 (struct RangeList*) ; 
 scalar_t__ FUNC11 () ; 

int
FUNC12(void)
{
    struct Range r;
    struct RangeList targets[1] = {{0}};

    FUNC2(FUNC11() == 0);

    /* Do a spearate test of the 'exclude' feature */
    if (FUNC3())
        return 1;
    
    FUNC4(targets, 0, sizeof(targets[0]));
#define ERROR() LOG(0, "selftest: failed %s:%u\n", __FILE__, __LINE__);

    /* test for the /0 CIDR block, since we'll be using that a lot to scan the entire
     * Internet */
    r = FUNC5("0.0.0.0/0", 0, 0);
    FUNC2(r.begin == 0 && r.end == 0xFFFFFFFF);

    r = FUNC5("0.0.0./0", 0, 0);
    FUNC2(r.begin > r.end);

    r = FUNC5("75.748.86.91", 0, 0);
    FUNC2(r.begin > r.end);

    r = FUNC5("23.75.345.200", 0, 0);
    FUNC2(r.begin > r.end);

    r = FUNC5("192.1083.0.1", 0, 0);
    FUNC2(r.begin > r.end);

    r = FUNC5("192.168.1.3", 0, 0);
    if (r.begin != 0xc0a80103 || r.end != 0xc0a80103) {
        FUNC1(0, "r.begin = 0x%08x r.end = 0x%08x\n", r.begin, r.end);
        ERROR();
        return 1;
    }

    r = FUNC5("10.0.0.20-10.0.0.30", 0, 0);
    if (r.begin != 0x0A000000+20 || r.end != 0x0A000000+30) {
        FUNC1(0,  "r.begin = 0x%08x r.end = 0x%08x\n", r.begin, r.end);
        ERROR();
        return 1;
    }

    r = FUNC5("10.0.1.2/16", 0, 0);
    if (r.begin != 0x0A000000 || r.end != 0x0A00FFFF) {
        FUNC1(0, "r.begin = 0x%08x r.end = 0x%08x\n", r.begin, r.end);
        ERROR();
        return 1;
    }


    FUNC6(targets, FUNC5("10.0.0.0/24", 0, 0));
    FUNC6(targets, FUNC5("10.0.1.10-10.0.1.19", 0, 0));
    FUNC6(targets, FUNC5("10.0.1.20-10.0.1.30", 0, 0));
    FUNC6(targets, FUNC5("10.0.0.0-10.0.1.12", 0, 0));
    FUNC10(targets);

    if (targets->count != 1) {
        FUNC1(0, "count = %u\n", targets->count);
        ERROR();
        return 1;
    }
    if (targets->list[0].begin != 0x0a000000 || targets->list[0].end != 0x0a000100+30) {
        FUNC1(0, "r.begin = 0x%08x r.end = 0x%08x\n", targets->list[0].begin, targets->list[0].end);
        ERROR();
        return 1;
    }

    FUNC8(targets);

    /*
     * Test removal
     */
    FUNC4(targets, 0, sizeof(targets[0]));

    FUNC6(targets, FUNC5("10.0.0.0/8", 0, 0));
    FUNC10(targets);

    /* These removals shouldn't change anything */
    FUNC9(targets, FUNC5("9.255.255.255", 0, 0));
    FUNC9(targets, FUNC5("11.0.0.0/16", 0, 0));
    FUNC9(targets, FUNC5("192.168.0.0/16", 0, 0));
    FUNC10(targets);

    if (targets->count != 1
        || targets->list->begin != 0x0a000000
        || targets->list->end != 0x0aFFFFFF) {
        ERROR();
        return 1;
    }

    /* These removals should remove a bit from the edges */
    FUNC9(targets, FUNC5("1.0.0.0-10.0.0.0", 0, 0));
    FUNC9(targets, FUNC5("10.255.255.255-11.0.0.0", 0, 0));
    FUNC10(targets);
    if (targets->count != 1
        || targets->list->begin != 0x0a000001
        || targets->list->end != 0x0aFFFFFE) {
        ERROR();
        return 1;
    }


    /* remove things from the middle */
    FUNC9(targets, FUNC5("10.10.0.0/16", 0, 0));
    FUNC9(targets, FUNC5("10.20.0.0/16", 0, 0));
    FUNC10(targets);
    if (targets->count != 3) {
        ERROR();
        return 1;
    }

    FUNC9(targets, FUNC5("10.12.0.0/16", 0, 0));
    FUNC10(targets);
    if (targets->count != 4) {
        ERROR();
        return 1;
    }

    FUNC9(targets, FUNC5("10.10.10.10-10.12.12.12", 0, 0));
    FUNC10(targets);
    if (targets->count != 3) {
        ERROR();
        return 1;
    }
    FUNC8(targets);

    /* test ports */
    {
        unsigned is_error = 0;
        FUNC4(targets, 0, sizeof(targets[0]));

        FUNC7(targets, "80,1000-2000,1234,4444", &is_error, 0);
        FUNC10(targets);
        if (targets->count != 3 || is_error) {
            ERROR();
            return 1;
        }

        if (targets->list[0].begin != 80 || targets->list[0].end != 80 ||
            targets->list[1].begin != 1000 || targets->list[1].end != 2000 ||
            targets->list[2].begin != 4444 || targets->list[2].end != 4444) {
            ERROR();
            return 1;
        }
    }

    return 0;
}