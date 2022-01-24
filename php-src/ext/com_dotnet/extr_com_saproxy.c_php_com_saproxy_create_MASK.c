#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_10__ {scalar_t__ ce; } ;
typedef  TYPE_1__ zend_object ;
struct TYPE_13__ {int /*<<< orphan*/ * handlers; } ;
struct TYPE_11__ {int dimensions; TYPE_4__ std; int /*<<< orphan*/ * indices; TYPE_3__* obj; } ;
typedef  TYPE_2__ php_com_saproxy ;
struct TYPE_12__ {int /*<<< orphan*/  zo; } ;
typedef  TYPE_3__ php_com_dotnet_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 TYPE_2__* FUNC4 (int,int) ; 
 scalar_t__ php_com_saproxy_class_entry ; 
 int /*<<< orphan*/  php_com_saproxy_handlers ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__) ; 

int FUNC7(zend_object *com_object, zval *proxy_out, zval *index)
{
	php_com_saproxy *proxy, *rel = NULL;

	proxy = FUNC4(1, sizeof(*proxy));
	proxy->dimensions = 1;

	if (com_object->ce == php_com_saproxy_class_entry) {
		rel = (php_com_saproxy*) com_object;
		proxy->obj = rel->obj;
		proxy->dimensions += rel->dimensions;
	} else {
		proxy->obj = (php_com_dotnet_object*) com_object;
	}

	FUNC0(&proxy->obj->zo);
	proxy->indices = FUNC5(proxy->dimensions, sizeof(zval *), 0);

	if (rel) {
		FUNC3(proxy, rel, rel->dimensions);
	}

	FUNC1(&proxy->indices[proxy->dimensions-1], index);

	FUNC6(&proxy->std, php_com_saproxy_class_entry);
	proxy->std.handlers = &php_com_saproxy_handlers;
	FUNC2(proxy_out, &proxy->std);

	return 1;
}