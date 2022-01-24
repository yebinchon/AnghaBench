#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {int /*<<< orphan*/  indices; TYPE_1__* obj; } ;
typedef  TYPE_2__ php_com_saproxy ;
struct TYPE_3__ {int /*<<< orphan*/  zo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_object *object)
{
	php_com_saproxy *proxy = (php_com_saproxy *)object;
//???	int i;
//???
//???	for (i = 0; i < proxy->dimensions; i++) {
//???		if (proxy->indices) {
//???				FREE_ZVAL(proxy->indices[i]);
//???		}
//???	}

	FUNC0(&proxy->obj->zo);

	FUNC2(object);

	FUNC1(proxy->indices);
}