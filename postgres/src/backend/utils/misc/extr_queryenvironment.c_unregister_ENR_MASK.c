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
struct TYPE_4__ {int /*<<< orphan*/  namedRelList; } ;
typedef  TYPE_1__ QueryEnvironment ;
typedef  scalar_t__ EphemeralNamedRelation ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC2(QueryEnvironment *queryEnv, const char *name)
{
	EphemeralNamedRelation match;

	match = FUNC0(queryEnv, name);
	if (match)
		queryEnv->namedRelList = FUNC1(queryEnv->namedRelList, match);
}