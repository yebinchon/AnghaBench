#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  queryEnv; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ md; } ;
typedef  TYPE_2__* EphemeralNamedRelation ;

/* Variables and functions */
 int SPI_ERROR_ARGUMENT ; 
 int SPI_ERROR_REL_NOT_FOUND ; 
 int SPI_OK_REL_UNREGISTER ; 
 int FUNC0 (int) ; 
 TYPE_4__* _SPI_current ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(const char *name)
{
	EphemeralNamedRelation match;
	int			res;

	if (name == NULL)
		return SPI_ERROR_ARGUMENT;

	res = FUNC0(false);	/* keep current memory context */
	if (res < 0)
		return res;

	match = FUNC2(name);
	if (match)
	{
		FUNC3(_SPI_current->queryEnv, match->md.name);
		res = SPI_OK_REL_UNREGISTER;
	}
	else
		res = SPI_ERROR_REL_NOT_FOUND;

	FUNC1(false);

	return res;
}