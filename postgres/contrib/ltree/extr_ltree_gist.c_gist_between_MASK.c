#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ltree_gist ;
struct TYPE_4__ {scalar_t__ firstgood; } ;
typedef  TYPE_1__ lquery ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC3(ltree_gist *key, lquery *query)
{
	if (query->firstgood == 0)
		return true;

	if (FUNC2(FUNC0(key), query) > 0)
		return false;

	if (FUNC2(FUNC1(key), query) < 0)
		return false;

	return true;
}