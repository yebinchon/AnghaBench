#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ zend_resource ;
typedef  int /*<<< orphan*/  xmlrpc_server_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(zend_resource *rsrc)
{
	if (rsrc && rsrc->ptr) {
		FUNC0(rsrc);
		FUNC2((xmlrpc_server_data*) rsrc->ptr);
		FUNC1(rsrc);
	}
}