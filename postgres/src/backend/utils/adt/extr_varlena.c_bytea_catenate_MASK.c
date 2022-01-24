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
typedef  int /*<<< orphan*/  bytea ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static bytea *
FUNC6(bytea *t1, bytea *t2)
{
	bytea	   *result;
	int			len1,
				len2,
				len;
	char	   *ptr;

	len1 = FUNC3(t1);
	len2 = FUNC3(t2);

	/* paranoia ... probably should throw error instead? */
	if (len1 < 0)
		len1 = 0;
	if (len2 < 0)
		len2 = 0;

	len = len1 + len2 + VARHDRSZ;
	result = (bytea *) FUNC5(len);

	/* Set size of result string... */
	FUNC0(result, len);

	/* Fill data field of result string... */
	ptr = FUNC1(result);
	if (len1 > 0)
		FUNC4(ptr, FUNC2(t1), len1);
	if (len2 > 0)
		FUNC4(ptr + len1, FUNC2(t2), len2);

	return result;
}