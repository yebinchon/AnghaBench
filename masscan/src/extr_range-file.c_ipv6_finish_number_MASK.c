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
struct TYPE_2__ {unsigned int index; unsigned int ellision_index; int /*<<< orphan*/ * tmp; int /*<<< orphan*/  begin; int /*<<< orphan*/  end; scalar_t__ is_second; } ;
struct RangeParser {TYPE_1__ ipv6; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned
FUNC3(struct RangeParser *p, unsigned char c)
{
    unsigned index = p->ipv6.index;
    unsigned ellision = p->ipv6.ellision_index;
    
    /* We must have seen 8 numbers, or an ellision */
    if (index < 7 && ellision >= 8)
        return 1;
    
    /* Handle ellision */
    FUNC1(
        &p->ipv6.tmp[8-(index-ellision)],
        &p->ipv6.tmp[ellision],
        sizeof(p->ipv6.tmp[0]) * (index-ellision)
        );
    FUNC2(
        &p->ipv6.tmp[ellision],
        0,
        sizeof(p->ipv6.tmp[0]) * (7 - index)
    );
    
    /* Copy over to begin/end */
    if (p->ipv6.is_second)
        FUNC0(p->ipv6.end, p->ipv6.tmp, sizeof(p->ipv6.end));
    else
        FUNC0(p->ipv6.begin, p->ipv6.tmp, sizeof(p->ipv6.begin));

    return 0;
}