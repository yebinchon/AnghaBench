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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

text *
FUNC5(text *t)
{
	/*
	 * VARSIZE is the total size of the struct in bytes.
	 */
	text	   *new_t = (text *) FUNC4(FUNC2(t));

	FUNC0(new_t, FUNC2(t));

	/*
	 * VARDATA is a pointer to the data region of the struct.
	 */
	FUNC3((void *) FUNC1(new_t), /* destination */
		   (void *) FUNC1(t), /* source */
		   FUNC2(t) - VARHDRSZ);	/* how many bytes */
	return new_t;
}