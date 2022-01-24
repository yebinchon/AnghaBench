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
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static text *
FUNC4(char *str, int len, char flag)
{
	text	   *item;

	item = (text *) FUNC3(VARHDRSZ + len + 1);
	FUNC0(item, VARHDRSZ + len + 1);

	*FUNC1(item) = flag;

	if (str && len > 0)
		FUNC2(FUNC1(item) + 1, str, len);

	return item;
}