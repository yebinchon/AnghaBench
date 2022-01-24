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
typedef  int /*<<< orphan*/  text ;
struct TYPE_4__ {int next_scalar; int result_start; int /*<<< orphan*/  tmp_cxt; int /*<<< orphan*/  tuple_store; int /*<<< orphan*/  ret_tdesc; TYPE_1__* lex; int /*<<< orphan*/  normalized_scalar; scalar_t__ normalize_results; } ;
struct TYPE_3__ {int lex_level; int prev_token_terminator; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__ ElementsState ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *state, bool isnull)
{
	ElementsState *_state = (ElementsState *) state;
	MemoryContext old_cxt;
	int			len;
	text	   *val;
	HeapTuple	tuple;
	Datum		values[1];
	bool		nulls[1] = {false};

	/* skip over nested objects */
	if (_state->lex->lex_level != 1)
		return;

	/* use the tmp context so we can clean up after each tuple is done */
	old_cxt = FUNC2(_state->tmp_cxt);

	if (isnull && _state->normalize_results)
	{
		nulls[0] = true;
		values[0] = (Datum) NULL;
	}
	else if (_state->next_scalar)
	{
		values[0] = FUNC0(_state->normalized_scalar);
		_state->next_scalar = false;
	}
	else
	{
		len = _state->lex->prev_token_terminator - _state->result_start;
		val = FUNC4(_state->result_start, len);
		values[0] = FUNC3(val);
	}

	tuple = FUNC5(_state->ret_tdesc, values, nulls);

	FUNC6(_state->tuple_store, tuple);

	/* clean up and switch back */
	FUNC2(old_cxt);
	FUNC1(_state->tmp_cxt);
}