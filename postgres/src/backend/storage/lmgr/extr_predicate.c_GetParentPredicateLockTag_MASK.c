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
typedef  int /*<<< orphan*/  PREDICATELOCKTARGETTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
#define  PREDLOCKTAG_PAGE 130 
#define  PREDLOCKTAG_RELATION 129 
#define  PREDLOCKTAG_TUPLE 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(const PREDICATELOCKTARGETTAG *tag,
						  PREDICATELOCKTARGETTAG *parent)
{
	switch (FUNC4(*tag))
	{
		case PREDLOCKTAG_RELATION:
			/* relation locks have no parent lock */
			return false;

		case PREDLOCKTAG_PAGE:
			/* parent lock is relation lock */
			FUNC6(*parent,
												FUNC1(*tag),
												FUNC3(*tag));

			return true;

		case PREDLOCKTAG_TUPLE:
			/* parent lock is page lock */
			FUNC5(*parent,
											FUNC1(*tag),
											FUNC3(*tag),
											FUNC2(*tag));
			return true;
	}

	/* not reachable */
	FUNC0(false);
	return false;
}