#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  double float8 ;
struct TYPE_3__ {int /*<<< orphan*/  A; int /*<<< orphan*/  B; } ;
typedef  TYPE_1__ LINE ;

/* Variables and functions */
 double DBL_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline float8
FUNC2(LINE *line)
{
	if (FUNC0(line->A))
		return DBL_MAX;
	if (FUNC0(line->B))
		return 0.0;
	return FUNC1(line->B, line->A);
}