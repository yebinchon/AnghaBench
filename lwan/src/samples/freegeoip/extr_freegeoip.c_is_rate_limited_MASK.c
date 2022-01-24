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
struct query_limit {int /*<<< orphan*/  base; int /*<<< orphan*/  queries; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ QUERIES_PER_HOUR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int*) ; 
 int /*<<< orphan*/  query_limit ; 

__attribute__((used)) static bool FUNC3(const char *ip_address)
{
    bool limited;
    int error;
    struct query_limit *limit;

    limit = (struct query_limit *)FUNC2(query_limit,
                                                          ip_address, &error);
    if (!limit)
        return true;

    limited = FUNC0(&limit->queries, 1) > QUERIES_PER_HOUR;
    FUNC1(query_limit, &limit->base);

    return limited;
}