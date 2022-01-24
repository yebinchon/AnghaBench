#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* json_struct_action ) (int /*<<< orphan*/ ) ;
struct TYPE_12__ {int /*<<< orphan*/  lex_level; } ;
struct TYPE_11__ {int /*<<< orphan*/  semstate; int /*<<< orphan*/  (* object_end ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* object_start ) (int /*<<< orphan*/ ) ;} ;
typedef  int JsonTokenType ;
typedef  TYPE_1__ JsonSemAction ;
typedef  TYPE_2__ JsonLexContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_PARSE_OBJECT_NEXT ; 
 int /*<<< orphan*/  JSON_PARSE_OBJECT_START ; 
 int /*<<< orphan*/  JSON_TOKEN_COMMA ; 
#define  JSON_TOKEN_OBJECT_END 129 
 int const JSON_TOKEN_OBJECT_START ; 
#define  JSON_TOKEN_STRING 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int const) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(JsonLexContext *lex, JsonSemAction *sem)
{
	/*
	 * an object is a possibly empty sequence of object fields, separated by
	 * commas and surrounded by curly braces.
	 */
	json_struct_action ostart = sem->object_start;
	json_struct_action oend = sem->object_end;
	JsonTokenType tok;

	FUNC0();

	if (ostart != NULL)
		(*ostart) (sem->semstate);

	/*
	 * Data inside an object is at a higher nesting level than the object
	 * itself. Note that we increment this after we call the semantic routine
	 * for the object start and restore it before we call the routine for the
	 * object end.
	 */
	lex->lex_level++;

	/* we know this will succeed, just clearing the token */
	FUNC2(JSON_PARSE_OBJECT_START, lex, JSON_TOKEN_OBJECT_START);

	tok = FUNC3(lex);
	switch (tok)
	{
		case JSON_TOKEN_STRING:
			FUNC4(lex, sem);
			while (FUNC1(lex, JSON_TOKEN_COMMA, NULL))
				FUNC4(lex, sem);
			break;
		case JSON_TOKEN_OBJECT_END:
			break;
		default:
			/* case of an invalid initial token inside the object */
			FUNC5(JSON_PARSE_OBJECT_START, lex);
	}

	FUNC2(JSON_PARSE_OBJECT_NEXT, lex, JSON_TOKEN_OBJECT_END);

	lex->lex_level--;

	if (oend != NULL)
		(*oend) (sem->semstate);
}