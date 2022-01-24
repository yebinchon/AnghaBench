#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {TYPE_1__* ce; } ;
typedef  TYPE_2__ zend_object ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ zend_ffi_cdata ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string *FUNC2(const zend_object *zobj) /* {{{ */
{
	zend_ffi_cdata *cdata = (zend_ffi_cdata*)zobj;

	return FUNC1(zobj->ce->name, FUNC0(cdata->type));
}