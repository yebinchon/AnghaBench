#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* strval; } ;
typedef  TYPE_1__ TransformJsonStringValuesState ;
struct TYPE_5__ {char* data; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 

__attribute__((used)) static void
FUNC2(void *state, char *fname, bool isnull)
{
	TransformJsonStringValuesState *_state = (TransformJsonStringValuesState *) state;

	if (_state->strval->data[_state->strval->len - 1] != '{')
		FUNC0(_state->strval, ',');

	/*
	 * Unfortunately we don't have the quoted and escaped string any more, so
	 * we have to re-escape it.
	 */
	FUNC1(_state->strval, fname);
	FUNC0(_state->strval, ':');
}