#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ sign; } ;
typedef  TYPE_1__ const NumericVar ;

/* Variables and functions */
 scalar_t__ NUMERIC_NEG ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  const_one ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const NumericVar *var, NumericVar *result)
{
	NumericVar	tmp;

	FUNC2(&tmp);
	FUNC3(var, &tmp);

	FUNC5(&tmp, 0);

	if (var->sign == NUMERIC_NEG && FUNC0(var, &tmp) != 0)
		FUNC4(&tmp, &const_one, &tmp);

	FUNC3(&tmp, result);
	FUNC1(&tmp);
}