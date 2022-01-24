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
struct RangeList {unsigned int count; struct Range* list; } ;
struct Range {int begin; int end; } ;
struct Masscan {struct RangeList targets; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (struct Range) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * stdout ; 

void
FUNC2(struct Masscan *masscan)
{
    struct RangeList *list = &masscan->targets;
    unsigned i;
    FILE *fp = stdout;

    for (i=0; i<list->count; i++) {
        struct Range range = list->list[i];
        FUNC1(fp, "%u.%u.%u.%u",
            (range.begin>>24)&0xFF,
            (range.begin>>16)&0xFF,
            (range.begin>> 8)&0xFF,
            (range.begin>> 0)&0xFF
            );
        if (range.begin != range.end) {
            unsigned cidr_bits = FUNC0(range);

            if (cidr_bits) {
                FUNC1(fp, "/%u", cidr_bits);
            } else
            FUNC1(fp, "-%u.%u.%u.%u",
                (range.end>>24)&0xFF,
                (range.end>>16)&0xFF,
                (range.end>> 8)&0xFF,
                (range.end>> 0)&0xFF
                );
        }
        FUNC1(fp, "\n");
    }


}