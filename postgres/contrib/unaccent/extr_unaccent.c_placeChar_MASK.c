#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* replaceTo; int replacelen; struct TYPE_4__* nextChar; } ;
typedef  TYPE_1__ TrieChar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static TrieChar *
FUNC7(TrieChar *node, const unsigned char *str, int lenstr,
		  const char *replaceTo, int replacelen)
{
	TrieChar   *curnode;

	if (!node)
		node = (TrieChar *) FUNC6(sizeof(TrieChar) * 256);

	FUNC0(lenstr > 0);			/* else str[0] doesn't exist */

	curnode = node + *str;

	if (lenstr <= 1)
	{
		if (curnode->replaceTo)
			FUNC1(WARNING,
					(FUNC2(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC3("duplicate source strings, first one will be used")));
		else
		{
			curnode->replacelen = replacelen;
			curnode->replaceTo = (char *) FUNC5(replacelen);
			FUNC4(curnode->replaceTo, replaceTo, replacelen);
		}
	}
	else
	{
		curnode->nextChar = FUNC7(curnode->nextChar, str + 1, lenstr - 1,
									  replaceTo, replacelen);
	}

	return node;
}