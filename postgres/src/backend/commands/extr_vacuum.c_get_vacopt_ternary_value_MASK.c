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
typedef  int /*<<< orphan*/  VacOptTernaryValue ;
typedef  int /*<<< orphan*/  DefElem ;

/* Variables and functions */
 int /*<<< orphan*/  VACOPT_TERNARY_DISABLED ; 
 int /*<<< orphan*/  VACOPT_TERNARY_ENABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VacOptTernaryValue
FUNC1(DefElem *def)
{
	return FUNC0(def) ? VACOPT_TERNARY_ENABLED : VACOPT_TERNARY_DISABLED;
}