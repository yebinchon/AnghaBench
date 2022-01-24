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
struct TYPE_5__ {int /*<<< orphan*/ * properties; } ;
struct TYPE_6__ {TYPE_1__ std; } ;
typedef  TYPE_2__ spl_array_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(zval *o1, zval *o2) /* {{{ */
{
	HashTable			*ht1,
						*ht2;
	spl_array_object	*intern1,
						*intern2;
	int					result	= 0;

	FUNC0(o1, o2);

	intern1	= FUNC1(o1);
	intern2	= FUNC1(o2);
	ht1		= FUNC2(intern1);
	ht2		= FUNC2(intern2);

	result = FUNC3(ht1, ht2);
	/* if we just compared std.properties, don't do it again */
	if (result == 0 &&
			!(ht1 == intern1->std.properties && ht2 == intern2->std.properties)) {
		result = FUNC4(o1, o2);
	}
	return result;
}