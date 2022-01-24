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
struct TYPE_4__ {int token_terminator; int token_start; } ;
typedef  TYPE_1__ JsonLexContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(JsonLexContext *lex)
{
	char	   *token;
	int			toklen;

	/* Separate out the offending token. */
	toklen = lex->token_terminator - lex->token_start;
	token = FUNC5(toklen + 1);
	FUNC4(token, lex->token_start, toklen);
	token[toklen] = '\0';

	FUNC0(ERROR,
			(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
			 FUNC3("invalid input syntax for type %s", "json"),
			 FUNC2("Token \"%s\" is invalid.", token),
			 FUNC6(lex)));
}