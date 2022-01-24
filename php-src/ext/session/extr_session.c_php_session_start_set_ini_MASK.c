#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_7__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;

/* Variables and functions */
 int /*<<< orphan*/  PHP_INI_STAGE_RUNTIME ; 
 int /*<<< orphan*/  PHP_INI_USER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(zend_string *varname, zend_string *new_value) {
	int ret;
	smart_str buf ={0};
	FUNC3(&buf, "session");
	FUNC2(&buf, '.');
	FUNC1(&buf, varname);
	FUNC0(&buf);
	ret = FUNC5(buf.s, new_value, PHP_INI_USER, PHP_INI_STAGE_RUNTIME, 0);
	FUNC4(&buf);
	return ret;
}