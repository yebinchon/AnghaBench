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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(const char *query, const char *match)
{
    while (!FUNC0(*query))
    {
        if (*query == '\0')
        {
            return 0;
        }
        ++query;
    }
    return FUNC2(match, query, FUNC1(match)) == 0;
}