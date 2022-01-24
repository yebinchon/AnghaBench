#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_13__ {scalar_t__ vectorpos; } ;
struct TYPE_12__ {scalar_t__ type; int flags; struct TYPE_12__* lexeme; struct TYPE_12__* next; int /*<<< orphan*/  lenlemm; int /*<<< orphan*/  lemm; } ;
typedef  int /*<<< orphan*/  TSQuery ;
typedef  TYPE_1__ TSLexeme ;
typedef  TYPE_1__ ParsedLex ;
typedef  TYPE_3__ HeadlineParsedText ;

/* Variables and functions */
 int TSL_ADDPOS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(HeadlineParsedText *prs, TSQuery query, ParsedLex *lexs, TSLexeme *norms)
{
	ParsedLex  *tmplexs;
	TSLexeme   *ptr;
	int32		savedpos;

	while (lexs)
	{
		if (lexs->type > 0)
			FUNC0(prs, lexs->lemm, lexs->lenlemm, lexs->type);

		ptr = norms;
		savedpos = prs->vectorpos;
		while (ptr && ptr->lexeme)
		{
			if (ptr->flags & TSL_ADDPOS)
				savedpos++;
			FUNC1(prs, query, savedpos, ptr->lexeme, FUNC3(ptr->lexeme));
			ptr++;
		}

		tmplexs = lexs->next;
		FUNC2(lexs);
		lexs = tmplexs;
	}

	if (norms)
	{
		ptr = norms;
		while (ptr->lexeme)
		{
			if (ptr->flags & TSL_ADDPOS)
				prs->vectorpos++;
			FUNC2(ptr->lexeme);
			ptr++;
		}
		FUNC2(norms);
	}
}