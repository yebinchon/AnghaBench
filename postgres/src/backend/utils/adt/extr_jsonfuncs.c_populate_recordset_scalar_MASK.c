#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* saved_scalar; TYPE_1__* lex; int /*<<< orphan*/  function_name; } ;
struct TYPE_3__ {int lex_level; } ;
typedef  TYPE_2__ PopulateRecordsetState ;
typedef  int /*<<< orphan*/  JsonTokenType ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *state, char *token, JsonTokenType tokentype)
{
	PopulateRecordsetState *_state = (PopulateRecordsetState *) state;

	if (_state->lex->lex_level == 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("cannot call %s on a scalar",
						_state->function_name)));

	if (_state->lex->lex_level == 2)
		_state->saved_scalar = token;
}