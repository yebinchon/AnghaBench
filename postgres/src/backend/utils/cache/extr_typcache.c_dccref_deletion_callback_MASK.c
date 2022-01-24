#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * dcc; int /*<<< orphan*/  constraints; } ;
typedef  TYPE_1__ DomainConstraintRef ;
typedef  int /*<<< orphan*/  DomainConstraintCache ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	DomainConstraintRef *ref = (DomainConstraintRef *) arg;
	DomainConstraintCache *dcc = ref->dcc;

	/* Paranoia --- be sure link is nulled before trying to release */
	if (dcc)
	{
		ref->constraints = NIL;
		ref->dcc = NULL;
		FUNC0(dcc);
	}
}