#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ zend_module_entry ;
struct TYPE_10__ {TYPE_1__* module; } ;
struct TYPE_11__ {TYPE_2__ internal; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  name; TYPE_3__ info; } ;
typedef  TYPE_5__ zend_class_entry ;
typedef  int /*<<< orphan*/  smart_str ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ZEND_INTERNAL_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_class_entry *ce, zend_string *key, smart_str *str, char *indent, zend_module_entry *module, int *num_classes) /* {{{ */
{
	if (ce->type == ZEND_INTERNAL_CLASS && ce->info.internal.module && !FUNC2(ce->info.internal.module->name, module->name)) {
		/* dump class if it is not an alias */
		if (FUNC3(ce->name, key)) {
			FUNC1(str, "\n");
			FUNC0(str, ce, NULL, indent);
			(*num_classes)++;
		}
	}
}