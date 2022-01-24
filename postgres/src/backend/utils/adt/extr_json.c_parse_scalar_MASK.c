#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* json_scalar_action ) (int /*<<< orphan*/ ,char*,int) ;
struct TYPE_3__ {int /*<<< orphan*/  semstate; int /*<<< orphan*/  (* scalar ) (int /*<<< orphan*/ ,char*,int) ;} ;
typedef  int JsonTokenType ;
typedef  TYPE_1__ JsonSemAction ;
typedef  int /*<<< orphan*/  JsonLexContext ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_PARSE_VALUE ; 
#define  JSON_TOKEN_FALSE 132 
#define  JSON_TOKEN_NULL 131 
#define  JSON_TOKEN_NUMBER 130 
#define  JSON_TOKEN_STRING 129 
#define  JSON_TOKEN_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const,char**) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline void
FUNC4(JsonLexContext *lex, JsonSemAction *sem)
{
	char	   *val = NULL;
	json_scalar_action sfunc = sem->scalar;
	char	  **valaddr;
	JsonTokenType tok = FUNC1(lex);

	valaddr = sfunc == NULL ? NULL : &val;

	/* a scalar must be a string, a number, true, false, or null */
	switch (tok)
	{
		case JSON_TOKEN_TRUE:
			FUNC0(lex, JSON_TOKEN_TRUE, valaddr);
			break;
		case JSON_TOKEN_FALSE:
			FUNC0(lex, JSON_TOKEN_FALSE, valaddr);
			break;
		case JSON_TOKEN_NULL:
			FUNC0(lex, JSON_TOKEN_NULL, valaddr);
			break;
		case JSON_TOKEN_NUMBER:
			FUNC0(lex, JSON_TOKEN_NUMBER, valaddr);
			break;
		case JSON_TOKEN_STRING:
			FUNC0(lex, JSON_TOKEN_STRING, valaddr);
			break;
		default:
			FUNC2(JSON_PARSE_VALUE, lex);
	}

	if (sfunc != NULL)
		(*sfunc) (sem->semstate, val, tok);
}