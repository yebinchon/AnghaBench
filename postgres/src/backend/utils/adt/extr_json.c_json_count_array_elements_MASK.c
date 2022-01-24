#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lex_level; int /*<<< orphan*/ * strval; } ;
typedef  TYPE_1__ JsonLexContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_PARSE_ARRAY_NEXT ; 
 int /*<<< orphan*/  JSON_PARSE_ARRAY_START ; 
 scalar_t__ JSON_TOKEN_ARRAY_END ; 
 scalar_t__ JSON_TOKEN_ARRAY_START ; 
 int /*<<< orphan*/  JSON_TOKEN_COMMA ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  nullSemAction ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC5(JsonLexContext *lex)
{
	JsonLexContext copylex;
	int			count;

	/*
	 * It's safe to do this with a shallow copy because the lexical routines
	 * don't scribble on the input. They do scribble on the other pointers
	 * etc, so doing this with a copy makes that safe.
	 */
	FUNC3(&copylex, lex, sizeof(JsonLexContext));
	copylex.strval = NULL;		/* not interested in values here */
	copylex.lex_level++;

	count = 0;
	FUNC1(JSON_PARSE_ARRAY_START, &copylex, JSON_TOKEN_ARRAY_START);
	if (FUNC2(&copylex) != JSON_TOKEN_ARRAY_END)
	{
		do
		{
			count++;
			FUNC4(&copylex, &nullSemAction);
		}
		while (FUNC0(&copylex, JSON_TOKEN_COMMA, NULL));
	}
	FUNC1(JSON_PARSE_ARRAY_NEXT, &copylex, JSON_TOKEN_ARRAY_END);

	return count;
}