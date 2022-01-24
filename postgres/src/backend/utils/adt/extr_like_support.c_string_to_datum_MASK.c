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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BYTEAOID ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NAMEOID ; 
 int /*<<< orphan*/  byteain ; 
 int /*<<< orphan*/  namein ; 

__attribute__((used)) static Datum
FUNC4(const char *str, Oid datatype)
{
	FUNC0(str != NULL);

	/*
	 * We cheat a little by assuming that CStringGetTextDatum() will do for
	 * bpchar and varchar constants too...
	 */
	if (datatype == NAMEOID)
		return FUNC3(namein, FUNC1(str));
	else if (datatype == BYTEAOID)
		return FUNC3(byteain, FUNC1(str));
	else
		return FUNC2(str);
}