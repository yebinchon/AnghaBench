#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  int /*<<< orphan*/  JsonValueListIterator ;
typedef  int /*<<< orphan*/  JsonValueList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WJB_BEGIN_ARRAY ; 
 int /*<<< orphan*/  WJB_ELEM ; 
 int /*<<< orphan*/  WJB_END_ARRAY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static JsonbValue *
FUNC3(const JsonValueList *items)
{
	JsonbParseState *ps = NULL;
	JsonValueListIterator it;
	JsonbValue *jbv;

	FUNC2(&ps, WJB_BEGIN_ARRAY, NULL);

	FUNC0(items, &it);
	while ((jbv = FUNC1(items, &it)))
		FUNC2(&ps, WJB_ELEM, jbv);

	return FUNC2(&ps, WJB_END_ARRAY, NULL);
}