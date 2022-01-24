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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 size_t const FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *str, const size_t str_len, const size_t out_len, char *ret) /* {{{ */
{
	size_t pos = 0;
	zend_string *buffer;
	if ((int) str_len < 0) {
		return FAILURE;
	}
	buffer = FUNC2((unsigned char*) str, str_len);
	if (FUNC0(buffer) < out_len) {
		/* Too short of an encoded string generated */
		FUNC4(buffer, 0);
		return FAILURE;
	}
	for (pos = 0; pos < out_len; pos++) {
		if (FUNC1(buffer)[pos] == '+') {
			ret[pos] = '.';
		} else if (FUNC1(buffer)[pos] == '=') {
			FUNC3(buffer);
			return FAILURE;
		} else {
			ret[pos] = FUNC1(buffer)[pos];
		}
	}
	FUNC3(buffer);
	return SUCCESS;
}