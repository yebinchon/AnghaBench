#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* rd_rel; } ;
struct TYPE_6__ {int /*<<< orphan*/  relnamespace; } ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC5(Relation rel)
{
	char	   *nspname;
	char	   *result;

	/* Qualify the name if not visible in search path */
	if (FUNC2(FUNC1(rel)))
		nspname = NULL;
	else
		nspname = FUNC3(rel->rd_rel->relnamespace);

	result = FUNC4(nspname, FUNC0(rel));

	return result;
}