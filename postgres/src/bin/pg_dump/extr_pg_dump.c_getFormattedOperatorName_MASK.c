#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  name; TYPE_2__* namespace; } ;
struct TYPE_9__ {TYPE_3__ dobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ dobj; } ;
typedef  TYPE_4__ OprInfo ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC6(Archive *fout, const char *oproid)
{
	OprInfo    *oprInfo;

	/* In all cases "0" means a null reference */
	if (FUNC5(oproid, "0") == 0)
		return NULL;

	oprInfo = FUNC1(FUNC0(oproid));
	if (oprInfo == NULL)
	{
		FUNC3("could not find operator with OID %s",
					   oproid);
		return NULL;
	}

	return FUNC4("OPERATOR(%s.%s)",
					FUNC2(oprInfo->dobj.namespace->dobj.name),
					oprInfo->dobj.name);
}