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
struct TYPE_4__ {int frozen; int /*<<< orphan*/  tabname; scalar_t__ isshared; } ;
typedef  TYPE_1__ HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

void
FUNC2(HTAB *hashp)
{
	if (hashp->isshared)
		FUNC0(ERROR, "cannot freeze shared hashtable \"%s\"", hashp->tabname);
	if (!hashp->frozen && FUNC1(hashp))
		FUNC0(ERROR, "cannot freeze hashtable \"%s\" because it has active scans",
			 hashp->tabname);
	hashp->frozen = true;
}