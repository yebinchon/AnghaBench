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
struct parse_initializer {unsigned int args_count; TYPE_1__** args; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(const struct parse_initializer *initializer)
{
    unsigned int count = 0, i;

    for (i = 0; i < initializer->args_count; ++i)
    {
        count += FUNC1(initializer->args[i]->data_type);
    }
    FUNC0("Initializer size = %u.\n", count);
    return count;
}