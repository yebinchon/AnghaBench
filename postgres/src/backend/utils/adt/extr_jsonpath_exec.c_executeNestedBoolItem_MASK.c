#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * current; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  TYPE_1__ JsonPathExecContext ;
typedef  int /*<<< orphan*/  JsonPathBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static JsonPathBool
FUNC1(JsonPathExecContext *cxt, JsonPathItem *jsp,
					  JsonbValue *jb)
{
	JsonbValue *prev;
	JsonPathBool res;

	prev = cxt->current;
	cxt->current = jb;
	res = FUNC0(cxt, jsp, jb, false);
	cxt->current = prev;

	return res;
}