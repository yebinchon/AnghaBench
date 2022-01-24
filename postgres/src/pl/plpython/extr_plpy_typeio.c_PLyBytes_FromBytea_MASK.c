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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PLyDatumToOb ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(PLyDatumToOb *arg, Datum d)
{
	text	   *txt = FUNC0(d);
	char	   *str = FUNC2(txt);
	size_t		size = FUNC3(txt);

	return FUNC1(str, size);
}