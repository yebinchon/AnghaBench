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
struct TYPE_6__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
struct TYPE_7__ {TYPE_1__ std; int /*<<< orphan*/ * type; } ;
typedef  TYPE_2__ zend_ffi_ctype ;
typedef  int /*<<< orphan*/  zend_class_entry ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  zend_ffi_ctype_handlers ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_object *FUNC2(zend_class_entry *class_type) /* {{{ */
{
	zend_ffi_ctype *ctype;

	ctype = FUNC0(sizeof(zend_ffi_ctype));

	FUNC1(&ctype->std, class_type);
	ctype->std.handlers = &zend_ffi_ctype_handlers;

	ctype->type = NULL;

	return &ctype->std;
}