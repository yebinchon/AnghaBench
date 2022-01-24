#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parseState; int /*<<< orphan*/  res; } ;
struct TYPE_6__ {char* val; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {TYPE_1__ string; } ;
struct TYPE_8__ {TYPE_2__ val; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  TYPE_4__ JsonbInState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WJB_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jbvString ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(void *pstate, char *fname, bool isnull)
{
	JsonbInState *_state = (JsonbInState *) pstate;
	JsonbValue	v;

	FUNC0(fname != NULL);
	v.type = jbvString;
	v.val.string.len = FUNC1(FUNC3(fname));
	v.val.string.val = fname;

	_state->res = FUNC2(&_state->parseState, WJB_KEY, &v);
}