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
 int MAX_NORM ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(char **forms, char **cur, char *word)
{
	if (cur - forms >= MAX_NORM - 1)
		return 0;
	if (forms == cur || FUNC1(word, *(cur - 1)) != 0)
	{
		*cur = FUNC0(word);
		*(cur + 1) = NULL;
		return 1;
	}

	return 0;
}