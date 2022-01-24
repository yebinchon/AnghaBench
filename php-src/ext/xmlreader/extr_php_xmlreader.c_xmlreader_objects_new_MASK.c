#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; int /*<<< orphan*/ * prop_handler; } ;
typedef  TYPE_2__ xmlreader_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xmlreader_object_handlers ; 
 int /*<<< orphan*/  xmlreader_prop_handlers ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

zend_object *FUNC3(zend_class_entry *class_type)
{
	xmlreader_object *intern;

	intern = FUNC1(sizeof(xmlreader_object), class_type);
	FUNC2(&intern->std, class_type);
	FUNC0(&intern->std, class_type);
	intern->prop_handler = &xmlreader_prop_handlers;
	intern->std.handlers = &xmlreader_object_handlers;

	return &intern->std;
}