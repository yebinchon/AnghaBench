#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
typedef  TYPE_1__* xsltStylesheetPtr ;
struct TYPE_6__ {scalar_t__ profiling; int /*<<< orphan*/ * ptr; scalar_t__ doc; scalar_t__ node_list; scalar_t__ registered_phpfunctions; scalar_t__ parameter; int /*<<< orphan*/  std; } ;
typedef  TYPE_2__ xsl_object ;
struct TYPE_5__ {int /*<<< orphan*/ * _private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zend_object *object)
{
	xsl_object *intern = FUNC3(object);

	FUNC6(&intern->std);

	FUNC5(intern->parameter);
	FUNC0(intern->parameter);

	FUNC5(intern->registered_phpfunctions);
	FUNC0(intern->registered_phpfunctions);

	if (intern->node_list) {
		FUNC5(intern->node_list);
		FUNC0(intern->node_list);
	}

	if (intern->doc) {
		FUNC2(intern->doc);
		FUNC1(intern->doc);
	}

	if (intern->ptr) {
		/* free wrapper */
		if (((xsltStylesheetPtr) intern->ptr)->_private != NULL) {
			((xsltStylesheetPtr) intern->ptr)->_private = NULL;
		}

		FUNC4((xsltStylesheetPtr) intern->ptr);
		intern->ptr = NULL;
	}
	if (intern->profiling) {
		FUNC1(intern->profiling);
	}
}