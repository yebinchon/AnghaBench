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
typedef  int JsonTokenType ;
typedef  int /*<<< orphan*/  JsonSemAction ;
typedef  int /*<<< orphan*/  JsonLexContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_PARSE_END ; 
#define  JSON_TOKEN_ARRAY_START 129 
 int /*<<< orphan*/  JSON_TOKEN_END ; 
#define  JSON_TOKEN_OBJECT_START 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(JsonLexContext *lex, JsonSemAction *sem)
{
	JsonTokenType tok;

	/* get the initial token */
	FUNC0(lex);

	tok = FUNC2(lex);

	/* parse by recursive descent */
	switch (tok)
	{
		case JSON_TOKEN_OBJECT_START:
			FUNC4(lex, sem);
			break;
		case JSON_TOKEN_ARRAY_START:
			FUNC3(lex, sem);
			break;
		default:
			FUNC5(lex, sem); /* json can be a bare scalar */
	}

	FUNC1(JSON_PARSE_END, lex, JSON_TOKEN_END);

}