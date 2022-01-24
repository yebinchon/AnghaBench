#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  scalar_t__ xsltStylesheetPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC4 (void*) ; 
 int /*<<< orphan*/ * xsl_xsltprocessor_class_entry ; 

void FUNC5(xsltStylesheetPtr obj, zval *wrapper_in, zval *return_value )
{
	zval *wrapper;
	zend_class_entry *ce;

	if (!obj) {
		wrapper = wrapper_in;
		FUNC1(wrapper);
		return;
	}

	if ((wrapper = FUNC4((void *) obj))) {
		FUNC0(wrapper, wrapper_in);
		return;
	}

	if (!wrapper_in) {
		wrapper = return_value;
	} else {
		wrapper = wrapper_in;
	}


	ce = xsl_xsltprocessor_class_entry;

	if (!wrapper_in) {
		FUNC2(wrapper, ce);
	}
	FUNC3(wrapper, (void *) obj);

	return;
}