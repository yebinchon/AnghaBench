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
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(Size origlen, char *origdata, Size newlen, char *newdata)
{
	Size		i;

	if (origlen != newlen)
		FUNC0(ERROR,
				(FUNC2("message corrupted"),
				 FUNC1("The original message was %zu bytes but the final message is %zu bytes.",
						   origlen, newlen)));

	for (i = 0; i < origlen; ++i)
		if (origdata[i] != newdata[i])
			FUNC0(ERROR,
					(FUNC2("message corrupted"),
					 FUNC1("The new and original messages differ at byte %zu of %zu.", i, origlen)));
}