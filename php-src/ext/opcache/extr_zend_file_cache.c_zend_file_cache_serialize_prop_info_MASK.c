#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * doc_comment; int /*<<< orphan*/ * name; struct TYPE_6__* ce; } ;
typedef  TYPE_1__ zend_property_info ;
typedef  int /*<<< orphan*/  zend_persistent_script ;
typedef  int /*<<< orphan*/  zend_file_cache_metainfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC7(zval                     *zv,
                                                zend_persistent_script   *script,
                                                zend_file_cache_metainfo *info,
                                                void                     *buf)
{
	if (!FUNC0(FUNC5(zv))) {
		zend_property_info *prop;

		FUNC1(FUNC5(zv));
		prop = FUNC5(zv);
		FUNC3(prop);

		FUNC4(prop->ce != NULL && prop->name != NULL);
		if (!FUNC0(prop->ce)) {
			FUNC1(prop->ce);
			FUNC2(prop->name);
			if (prop->doc_comment) {
				FUNC2(prop->doc_comment);
			}
			FUNC6(&prop->type, script, info, buf);
		}
	}
}