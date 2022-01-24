#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_4__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_3__ {int /*<<< orphan*/  rd_att; } ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int MAXATTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* boot_reldesc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * values ; 

void
FUNC8(char *value, int i)
{
	Oid			typoid;
	int16		typlen;
	bool		typbyval;
	char		typalign;
	char		typdelim;
	Oid			typioparam;
	Oid			typinput;
	Oid			typoutput;

	FUNC0(i >= 0 && i < MAXATTR);

	FUNC5(DEBUG4, "inserting column %d value \"%s\"", i, value);

	typoid = FUNC3(boot_reldesc->rd_att, i)->atttypid;

	FUNC4(typoid,
						  &typlen, &typbyval, &typalign,
						  &typdelim, &typioparam,
						  &typinput, &typoutput);

	values[i] = FUNC1(typinput, value, typioparam, -1);

	/*
	 * We use ereport not elog here so that parameters aren't evaluated unless
	 * the message is going to be printed, which generally it isn't
	 */
	FUNC6(DEBUG4,
			(FUNC7("inserted -> %s",
							 FUNC2(typoutput, values[i]))));
}