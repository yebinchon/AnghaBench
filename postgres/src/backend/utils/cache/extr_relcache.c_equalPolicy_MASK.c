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
struct TYPE_4__ {scalar_t__ polcmd; scalar_t__ hassublinks; int /*<<< orphan*/  with_check_qual; int /*<<< orphan*/  qual; int /*<<< orphan*/  roles; int /*<<< orphan*/  policy_name; } ;
typedef  TYPE_1__ RowSecurityPolicy ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(RowSecurityPolicy *policy1, RowSecurityPolicy *policy2)
{
	int			i;
	Oid		   *r1,
			   *r2;

	if (policy1 != NULL)
	{
		if (policy2 == NULL)
			return false;

		if (policy1->polcmd != policy2->polcmd)
			return false;
		if (policy1->hassublinks != policy2->hassublinks)
			return false;
		if (FUNC3(policy1->policy_name, policy2->policy_name) != 0)
			return false;
		if (FUNC1(policy1->roles)[0] != FUNC1(policy2->roles)[0])
			return false;

		r1 = (Oid *) FUNC0(policy1->roles);
		r2 = (Oid *) FUNC0(policy2->roles);

		for (i = 0; i < FUNC1(policy1->roles)[0]; i++)
		{
			if (r1[i] != r2[i])
				return false;
		}

		if (!FUNC2(policy1->qual, policy2->qual))
			return false;
		if (!FUNC2(policy1->with_check_qual, policy2->with_check_qual))
			return false;
	}
	else if (policy2 != NULL)
		return false;

	return true;
}