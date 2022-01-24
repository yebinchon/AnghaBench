#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  URL; int /*<<< orphan*/  author; int /*<<< orphan*/  copyright; int /*<<< orphan*/  version; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_extension ;
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2(smart_str *str, zend_extension *extension, char *indent) /* {{{ */
{
	FUNC0(str, "%sZend Extension [ %s ", indent, extension->name);

	if (extension->version) {
		FUNC0(str, "%s ", extension->version);
	}
	if (extension->copyright) {
		FUNC0(str, "%s ", extension->copyright);
	}
	if (extension->author) {
		FUNC0(str, "by %s ", extension->author);
	}
	if (extension->URL) {
		FUNC0(str, "<%s> ", extension->URL);
	}

	FUNC1(str, "]\n");
}