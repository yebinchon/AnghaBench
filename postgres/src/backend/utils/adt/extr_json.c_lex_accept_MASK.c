#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ token_type; int token_terminator; int token_start; TYPE_1__* strval; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  scalar_t__ JsonTokenType ;
typedef  TYPE_2__ JsonLexContext ;

/* Variables and functions */
 scalar_t__ JSON_TOKEN_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC4(JsonLexContext *lex, JsonTokenType token, char **lexeme)
{
	if (lex->token_type == token)
	{
		if (lexeme != NULL)
		{
			if (lex->token_type == JSON_TOKEN_STRING)
			{
				if (lex->strval != NULL)
					*lexeme = FUNC3(lex->strval->data);
			}
			else
			{
				int			len = (lex->token_terminator - lex->token_start);
				char	   *tokstr = FUNC2(len + 1);

				FUNC1(tokstr, lex->token_start, len);
				tokstr[len] = '\0';
				*lexeme = tokstr;
			}
		}
		FUNC0(lex);
		return true;
	}
	return false;
}