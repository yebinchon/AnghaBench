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
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_2__ {int /*<<< orphan*/  std; scalar_t__ unk; scalar_t__ ipsi; scalar_t__ ips; scalar_t__ ipf; } ;
typedef  TYPE_1__ php_com_persist_helper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_object *obj)
{
	php_com_persist_helper *object = (php_com_persist_helper*)obj;

	if (object->ipf) {
		FUNC0(object->ipf);
	}
	if (object->ips) {
		FUNC2(object->ips);
	}
	if (object->ipsi) {
		FUNC1(object->ipsi);
	}
	if (object->unk) {
		FUNC3(object->unk);
	}
	FUNC4(&object->std);
}