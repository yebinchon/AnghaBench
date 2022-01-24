#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * interp; } ;
typedef  TYPE_1__ pltcl_interp_desc ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  InvalidOid ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pltcl_interp_htab ; 

__attribute__((used)) static pltcl_interp_desc *
FUNC3(Oid prolang, bool pltrusted)
{
	Oid			user_id;
	pltcl_interp_desc *interp_desc;
	bool		found;

	/* Find or create the interpreter hashtable entry for this userid */
	if (pltrusted)
		user_id = FUNC0();
	else
		user_id = InvalidOid;

	interp_desc = FUNC1(pltcl_interp_htab, &user_id,
							  HASH_ENTER,
							  &found);
	if (!found)
		interp_desc->interp = NULL;

	/* If we haven't yet successfully made an interpreter, try to do that */
	if (!interp_desc->interp)
		FUNC2(interp_desc, prolang, pltrusted);

	return interp_desc;
}