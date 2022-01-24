#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  suffixes ;
struct TYPE_7__ {char const* data; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char const*) ; 

void
FUNC5(PQExpBuffer buf, const char *str, const char *dqprefix)
{
	static const char suffixes[] = "_XXXXXXX";
	int			nextchar = 0;
	PQExpBuffer delimBuf = FUNC2();

	/* start with $ + dqprefix if not NULL */
	FUNC0(delimBuf, '$');
	if (dqprefix)
		FUNC1(delimBuf, dqprefix);

	/*
	 * Make sure we choose a delimiter which (without the trailing $) is not
	 * present in the string being quoted. We don't check with the trailing $
	 * because a string ending in $foo must not be quoted with $foo$.
	 */
	while (FUNC4(str, delimBuf->data) != NULL)
	{
		FUNC0(delimBuf, suffixes[nextchar++]);
		nextchar %= sizeof(suffixes) - 1;
	}

	/* add trailing $ */
	FUNC0(delimBuf, '$');

	/* quote it and we are all done */
	FUNC1(buf, delimBuf->data);
	FUNC1(buf, str);
	FUNC1(buf, delimBuf->data);

	FUNC3(delimBuf);
}