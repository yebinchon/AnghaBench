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

/* Variables and functions */
 int* UnreservedPLKeywordTokens ; 
 int FUNC0 (int*) ; 

bool
FUNC1(int token)
{
	int			i;

	for (i = 0; i < FUNC0(UnreservedPLKeywordTokens); i++)
	{
		if (UnreservedPLKeywordTokens[i] == token)
			return true;
	}
	return false;
}