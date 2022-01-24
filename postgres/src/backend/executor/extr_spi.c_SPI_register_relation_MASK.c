#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * queryEnv; } ;
struct TYPE_7__ {int /*<<< orphan*/ * name; } ;
struct TYPE_8__ {TYPE_1__ md; } ;
typedef  TYPE_2__* EphemeralNamedRelation ;

/* Variables and functions */
 int SPI_ERROR_ARGUMENT ; 
 int SPI_ERROR_REL_DUPLICATE ; 
 int SPI_OK_REL_REGISTER ; 
 int FUNC0 (int) ; 
 TYPE_5__* _SPI_current ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

int
FUNC5(EphemeralNamedRelation enr)
{
	EphemeralNamedRelation match;
	int			res;

	if (enr == NULL || enr->md.name == NULL)
		return SPI_ERROR_ARGUMENT;

	res = FUNC0(false);	/* keep current memory context */
	if (res < 0)
		return res;

	match = FUNC2(enr->md.name);
	if (match)
		res = SPI_ERROR_REL_DUPLICATE;
	else
	{
		if (_SPI_current->queryEnv == NULL)
			_SPI_current->queryEnv = FUNC3();

		FUNC4(_SPI_current->queryEnv, enr);
		res = SPI_OK_REL_REGISTER;
	}

	FUNC1(false);

	return res;
}