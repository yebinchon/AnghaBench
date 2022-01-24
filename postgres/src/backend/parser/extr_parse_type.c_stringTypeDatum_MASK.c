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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  Type ;
struct TYPE_2__ {int /*<<< orphan*/  typinput; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* Form_pg_type ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

Datum
FUNC3(Type tp, char *string, int32 atttypmod)
{
	Form_pg_type typform = (Form_pg_type) FUNC0(tp);
	Oid			typinput = typform->typinput;
	Oid			typioparam = FUNC2(tp);

	return FUNC1(typinput, string, typioparam, atttypmod);
}