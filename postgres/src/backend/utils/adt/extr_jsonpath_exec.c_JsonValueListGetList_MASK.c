#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * list; scalar_t__ singleton; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ JsonValueList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 

__attribute__((used)) static List *
FUNC1(JsonValueList *jvl)
{
	if (jvl->singleton)
		return FUNC0(jvl->singleton);

	return jvl->list;
}