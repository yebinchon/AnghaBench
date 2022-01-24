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
struct RangeList {int dummy; } ;
struct Range {int /*<<< orphan*/  end; int /*<<< orphan*/  begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RangeList*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct RangeList *targets, struct Range range)
{
    FUNC0(targets, range.begin, range.end);
}