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
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * singleton; } ;
typedef  int /*<<< orphan*/  JsonbValue ;
typedef  TYPE_1__ JsonValueList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static JsonbValue *
FUNC1(JsonValueList *jvl)
{
	return jvl->singleton ? jvl->singleton : FUNC0(jvl->list);
}