#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_7__ {scalar_t__ doc_comment; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_property_info ;
struct TYPE_8__ {scalar_t__ save_comments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_6__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  accel_directives ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(zval *zv)
{
	zend_property_info *prop = FUNC4(zv);

	if (!FUNC6(prop)) {
		FUNC7(prop, prop);
		FUNC1(sizeof(zend_property_info));
		FUNC0(prop->name);
		FUNC5(&prop->type);
		if (FUNC3(accel_directives).save_comments && prop->doc_comment) {
			FUNC2(prop->doc_comment);
		}
	}
}