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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {size_t len; char* val; } ;
typedef  TYPE_1__ zend_string ;
typedef  int /*<<< orphan*/  zend_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool FUNC1(zval *val)
{
	size_t len = 0;
	zend_string *value = FUNC0(val);

	/* https://tools.ietf.org/html/rfc2822#section-2.2.1 */
	/* https://tools.ietf.org/html/rfc2822#section-2.2.3 */
	while (len < value->len) {
		if (*(value->val+len) == '\r') {
			if (value->len - len >= 3
				&&  *(value->val+len+1) == '\n'
				&& (*(value->val+len+2) == ' '  || *(value->val+len+2) == '\t')) {
				len += 3;
				continue;
			}
			return FAILURE;
		}
		if (*(value->val+len) == '\0') {
			return FAILURE;
		}
		len++;
	}
	return SUCCESS;
}