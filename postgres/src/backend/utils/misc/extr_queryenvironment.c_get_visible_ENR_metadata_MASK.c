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
struct TYPE_3__ {int /*<<< orphan*/  md; } ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/ * EphemeralNamedRelationMetadata ;
typedef  TYPE_1__* EphemeralNamedRelation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 

EphemeralNamedRelationMetadata
FUNC2(QueryEnvironment *queryEnv, const char *refname)
{
	EphemeralNamedRelation enr;

	FUNC0(refname != NULL);

	if (queryEnv == NULL)
		return NULL;

	enr = FUNC1(queryEnv, refname);

	if (enr)
		return &(enr->md);

	return NULL;
}