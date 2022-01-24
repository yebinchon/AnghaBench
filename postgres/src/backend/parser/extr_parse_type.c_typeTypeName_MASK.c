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
typedef  int /*<<< orphan*/  Type ;
struct TYPE_2__ {int /*<<< orphan*/  typname; } ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

char *
FUNC3(Type t)
{
	Form_pg_type typ;

	typ = (Form_pg_type) FUNC0(t);
	/* pstrdup here because result may need to outlive the syscache entry */
	return FUNC2(FUNC1(typ->typname));
}