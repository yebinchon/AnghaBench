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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 

List *
FUNC10(Datum options)
{
	List	   *result = NIL;
	ArrayType  *array;
	Datum	   *optiondatums;
	int			noptions;
	int			i;

	/* Nothing to do if no options */
	if (!FUNC2(FUNC1(options)))
		return result;

	array = FUNC0(options);

	FUNC4(array, TEXTOID, -1, false, 'i',
					  &optiondatums, NULL, &noptions);

	for (i = 0; i < noptions; i++)
	{
		char	   *s;
		char	   *p;
		Node	   *val = NULL;

		s = FUNC3(optiondatums[i]);
		p = FUNC9(s, '=');
		if (p)
		{
			*p++ = '\0';
			val = (Node *) FUNC7(FUNC8(p));
		}
		result = FUNC5(result, FUNC6(FUNC8(s), val, -1));
	}

	return result;
}