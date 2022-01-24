#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_context ;
struct TYPE_6__ {scalar_t__ constcollid; int /*<<< orphan*/  consttype; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__ Const ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Const *constval, deparse_context *context)
{
	StringInfo	buf = context->buf;

	if (FUNC0(constval->constcollid))
	{
		Oid			typcollation = FUNC3(constval->consttype);

		if (constval->constcollid != typcollation)
		{
			FUNC1(buf, " COLLATE %s",
							 FUNC2(constval->constcollid));
		}
	}
}