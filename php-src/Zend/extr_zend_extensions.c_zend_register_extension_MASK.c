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
struct TYPE_5__ {scalar_t__ op_array_persist; scalar_t__ op_array_persist_calc; scalar_t__ op_array_handler; scalar_t__ op_array_dtor; scalar_t__ op_array_ctor; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ zend_extension ;
typedef  int /*<<< orphan*/  DL_HANDLE ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  ZEND_EXTENSIONS_HAVE_OP_ARRAY_CTOR ; 
 int /*<<< orphan*/  ZEND_EXTENSIONS_HAVE_OP_ARRAY_DTOR ; 
 int /*<<< orphan*/  ZEND_EXTENSIONS_HAVE_OP_ARRAY_HANDLER ; 
 int /*<<< orphan*/  ZEND_EXTENSIONS_HAVE_OP_ARRAY_PERSIST ; 
 int /*<<< orphan*/  ZEND_EXTENSIONS_HAVE_OP_ARRAY_PERSIST_CALC ; 
 int /*<<< orphan*/  ZEND_EXTMSG_NEW_EXTENSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  zend_extension_flags ; 
 int /*<<< orphan*/  zend_extensions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC2(zend_extension *new_extension, DL_HANDLE handle)
{
#if ZEND_EXTENSIONS_SUPPORT
	zend_extension extension;

	extension = *new_extension;
	extension.handle = handle;

	zend_extension_dispatch_message(ZEND_EXTMSG_NEW_EXTENSION, &extension);

	zend_llist_add_element(&zend_extensions, &extension);

	if (extension.op_array_ctor) {
		zend_extension_flags |= ZEND_EXTENSIONS_HAVE_OP_ARRAY_CTOR;
	}
	if (extension.op_array_dtor) {
		zend_extension_flags |= ZEND_EXTENSIONS_HAVE_OP_ARRAY_DTOR;
	}
	if (extension.op_array_handler) {
		zend_extension_flags |= ZEND_EXTENSIONS_HAVE_OP_ARRAY_HANDLER;
	}
	if (extension.op_array_persist_calc) {
		zend_extension_flags |= ZEND_EXTENSIONS_HAVE_OP_ARRAY_PERSIST_CALC;
	}
	if (extension.op_array_persist) {
		zend_extension_flags |= ZEND_EXTENSIONS_HAVE_OP_ARRAY_PERSIST;
	}
	/*fprintf(stderr, "Loaded %s, version %s\n", extension.name, extension.version);*/
#endif

	return SUCCESS;
}