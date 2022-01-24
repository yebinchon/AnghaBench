#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_9__ {int /*<<< orphan*/  std; int /*<<< orphan*/  dimensions; int /*<<< orphan*/  indices; TYPE_1__* obj; } ;
typedef  TYPE_2__ php_com_saproxy ;
struct TYPE_8__ {int /*<<< orphan*/  zo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_object* FUNC5(zend_object *object)
{
	php_com_saproxy *proxy = (php_com_saproxy *) object;
	php_com_saproxy *cloneproxy;

	cloneproxy = FUNC2(sizeof(*cloneproxy));
	FUNC3(cloneproxy, proxy, sizeof(*cloneproxy));

	FUNC0(&cloneproxy->obj->zo);
	cloneproxy->indices = FUNC4(cloneproxy->dimensions, sizeof(zval *), 0);
	FUNC1(cloneproxy, proxy, proxy->dimensions);

	return &cloneproxy->std;
}