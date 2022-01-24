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
struct RangeList {unsigned int count; struct Range* list; int /*<<< orphan*/  member_0; } ;
struct Range {unsigned int begin; unsigned int end; } ;
struct Banner1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct RangeList*,char const*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Banner1*,unsigned int) ; 

__attribute__((used)) static void
FUNC4(struct Banner1 *b, const char *value)
{
    struct RangeList ports = {0};
    unsigned is_error = 0;
    unsigned i;
    
    FUNC2(&ports, value, &is_error, 0);
    if (is_error) {
        FUNC0(0, "SCRIPTING: invalid 'setTcpPorts' range: %s\n", value);
        FUNC1(1);
    }

    for (i=0; i<ports.count; i++) {
        struct Range *range = &ports.list[i];
        unsigned j;
        
        for (j=range->begin; j<=range->end; j++) {
            FUNC3(b, j);
        }
    }
    
}