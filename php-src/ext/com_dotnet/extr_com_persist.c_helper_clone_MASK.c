#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_7__ {int /*<<< orphan*/  ce; } ;
struct TYPE_6__ {scalar_t__ unk; scalar_t__ ipsi; scalar_t__ ips; scalar_t__ ipf; TYPE_2__ std; } ;
typedef  TYPE_1__ php_com_persist_helper ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_object* FUNC7(zend_object *obj)
{
	php_com_persist_helper *clone, *object = (php_com_persist_helper*) obj;

	clone = FUNC4(sizeof(*object));
	FUNC5(clone, object, sizeof(*object));

	FUNC6(&clone->std, object->std.ce);

	if (clone->ipf) {
		FUNC0(clone->ipf);
	}
	if (clone->ips) {
		FUNC2(clone->ips);
	}
	if (clone->ipsi) {
		FUNC1(clone->ipsi);
	}
	if (clone->unk) {
		FUNC3(clone->unk);
	}
	return (zend_object*)clone;
}