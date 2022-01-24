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
struct TYPE_4__ {char* saved_scalar; scalar_t__ saved_token_type; TYPE_1__* lex; int /*<<< orphan*/  function_name; } ;
struct TYPE_3__ {int lex_level; } ;
typedef  scalar_t__ JsonTokenType ;
typedef  TYPE_2__ JHashState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *state, char *token, JsonTokenType tokentype)
{
	JHashState *_state = (JHashState *) state;

	if (_state->lex->lex_level == 0)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("cannot call %s on a scalar", _state->function_name)));

	if (_state->lex->lex_level == 1)
	{
		_state->saved_scalar = token;
		/* saved_token_type must already be set in hash_object_field_start() */
		FUNC0(_state->saved_token_type == tokentype);
	}
}