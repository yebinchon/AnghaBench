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
typedef  int /*<<< orphan*/  (* json_aelem_action ) (int /*<<< orphan*/ ,int) ;
struct TYPE_6__ {int /*<<< orphan*/  semstate; int /*<<< orphan*/  (* array_element_end ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* array_element_start ) (int /*<<< orphan*/ ,int) ;} ;
typedef  int JsonTokenType ;
typedef  TYPE_1__ JsonSemAction ;
typedef  int /*<<< orphan*/  JsonLexContext ;

/* Variables and functions */
#define  JSON_TOKEN_ARRAY_START 129 
 int JSON_TOKEN_NULL ; 
#define  JSON_TOKEN_OBJECT_START 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(JsonLexContext *lex, JsonSemAction *sem)
{
	json_aelem_action astart = sem->array_element_start;
	json_aelem_action aend = sem->array_element_end;
	JsonTokenType tok = FUNC0(lex);

	bool		isnull;

	isnull = tok == JSON_TOKEN_NULL;

	if (astart != NULL)
		(*astart) (sem->semstate, isnull);

	/* an array element is any object, array or scalar */
	switch (tok)
	{
		case JSON_TOKEN_OBJECT_START:
			FUNC2(lex, sem);
			break;
		case JSON_TOKEN_ARRAY_START:
			FUNC1(lex, sem);
			break;
		default:
			FUNC3(lex, sem);
	}

	if (aend != NULL)
		(*aend) (sem->semstate, isnull);
}