#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* json_ofield_action ) (int /*<<< orphan*/ ,char*,int) ;
struct TYPE_6__ {int /*<<< orphan*/  semstate; int /*<<< orphan*/  (* object_field_end ) (int /*<<< orphan*/ ,char*,int) ;int /*<<< orphan*/  (* object_field_start ) (int /*<<< orphan*/ ,char*,int) ;} ;
typedef  int JsonTokenType ;
typedef  TYPE_1__ JsonSemAction ;
typedef  int /*<<< orphan*/  JsonLexContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_PARSE_OBJECT_LABEL ; 
 int /*<<< orphan*/  JSON_PARSE_STRING ; 
#define  JSON_TOKEN_ARRAY_START 129 
 int /*<<< orphan*/  JSON_TOKEN_COLON ; 
 int JSON_TOKEN_NULL ; 
#define  JSON_TOKEN_OBJECT_START 128 
 int /*<<< orphan*/  JSON_TOKEN_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(JsonLexContext *lex, JsonSemAction *sem)
{
	/*
	 * An object field is "fieldname" : value where value can be a scalar,
	 * object or array.  Note: in user-facing docs and error messages, we
	 * generally call a field name a "key".
	 */

	char	   *fname = NULL;	/* keep compiler quiet */
	json_ofield_action ostart = sem->object_field_start;
	json_ofield_action oend = sem->object_field_end;
	bool		isnull;
	char	  **fnameaddr = NULL;
	JsonTokenType tok;

	if (ostart != NULL || oend != NULL)
		fnameaddr = &fname;

	if (!FUNC0(lex, JSON_TOKEN_STRING, fnameaddr))
		FUNC6(JSON_PARSE_STRING, lex);

	FUNC1(JSON_PARSE_OBJECT_LABEL, lex, JSON_TOKEN_COLON);

	tok = FUNC2(lex);
	isnull = tok == JSON_TOKEN_NULL;

	if (ostart != NULL)
		(*ostart) (sem->semstate, fname, isnull);

	switch (tok)
	{
		case JSON_TOKEN_OBJECT_START:
			FUNC4(lex, sem);
			break;
		case JSON_TOKEN_ARRAY_START:
			FUNC3(lex, sem);
			break;
		default:
			FUNC5(lex, sem);
	}

	if (oend != NULL)
		(*oend) (sem->semstate, fname, isnull);
}