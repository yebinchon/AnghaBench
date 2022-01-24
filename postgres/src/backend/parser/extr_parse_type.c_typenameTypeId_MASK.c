#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeName ;
typedef  int /*<<< orphan*/  Type ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

Oid
FUNC3(ParseState *pstate, const TypeName *typeName)
{
	Oid			typoid;
	Type		tup;

	tup = FUNC2(pstate, typeName, NULL);
	typoid = ((Form_pg_type) FUNC0(tup))->oid;
	FUNC1(tup);

	return typoid;
}