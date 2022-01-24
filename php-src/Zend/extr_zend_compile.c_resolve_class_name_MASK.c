#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_5__ {TYPE_1__* parent; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ zend_class_entry ;
struct TYPE_4__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static zend_string *FUNC1(zend_string *name, zend_class_entry *scope) {
	if (scope) {
		if (FUNC0(name, "self")) {
			name = scope->name;
		} else if (FUNC0(name, "parent") && scope->parent) {
			name = scope->parent->name;
		}
	}
	return name;
}