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
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_2__* encodePtr ;
struct TYPE_5__ {scalar_t__ map; TYPE_2__* type_str; TYPE_2__* ns; } ;
struct TYPE_6__ {TYPE_1__ details; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(zval *zv)
{
	encodePtr t = FUNC0(zv);
	if (t->details.ns) {
		FUNC2(t->details.ns);
	}
	if (t->details.type_str) {
		FUNC2(t->details.type_str);
	}
	if (t->details.map) {
		FUNC1(t->details.map);
	}
	FUNC2(t);
}