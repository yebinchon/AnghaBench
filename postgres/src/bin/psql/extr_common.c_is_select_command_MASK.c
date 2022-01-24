#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  encoding; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 TYPE_1__ pset ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static bool
FUNC4(const char *query)
{
	int			wordlen;

	/*
	 * First advance over any whitespace, comments and left parentheses.
	 */
	for (;;)
	{
		query = FUNC3(query);
		if (query[0] == '(')
			query++;
		else
			break;
	}

	/*
	 * Check word length (since "selectx" is not "select").
	 */
	wordlen = 0;
	while (FUNC1((unsigned char) query[wordlen]))
		wordlen += FUNC0(&query[wordlen], pset.encoding);

	if (wordlen == 6 && FUNC2(query, "select", 6) == 0)
		return true;

	if (wordlen == 6 && FUNC2(query, "values", 6) == 0)
		return true;

	return false;
}