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
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PHP_DOUBLE_MAX_LENGTH ; 
 int PHP_JSON_PRESERVE_ZERO_FRACTION ; 
 int /*<<< orphan*/  FUNC1 (double,int,char,char,char*) ; 
 int /*<<< orphan*/  serialize_precision ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static inline void FUNC5(smart_str *buf, double d, int options) /* {{{ */
{
	size_t len;
	char num[PHP_DOUBLE_MAX_LENGTH];

	FUNC1(d, (int)FUNC0(serialize_precision), '.', 'e', num);
	len = FUNC4(num);
	if (options & PHP_JSON_PRESERVE_ZERO_FRACTION && FUNC3(num, '.') == NULL && len < PHP_DOUBLE_MAX_LENGTH - 2) {
		num[len++] = '.';
		num[len++] = '0';
		num[len] = '\0';
	}
	FUNC2(buf, num, len);
}