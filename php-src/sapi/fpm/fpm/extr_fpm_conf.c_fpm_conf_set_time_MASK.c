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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(zval *value, void **config, intptr_t offset) /* {{{ */
{
	char *val = FUNC0(value);
	int len = FUNC2(val);
	char suffix;
	int seconds;
	if (!len) {
		return "invalid time value";
	}

	suffix = val[len-1];
	switch (suffix) {
		case 'm' :
			val[len-1] = '\0';
			seconds = 60 * FUNC1(val);
			break;
		case 'h' :
			val[len-1] = '\0';
			seconds = 60 * 60 * FUNC1(val);
			break;
		case 'd' :
			val[len-1] = '\0';
			seconds = 24 * 60 * 60 * FUNC1(val);
			break;
		case 's' : /* s is the default suffix */
			val[len-1] = '\0';
			suffix = '0';
		default :
			if (suffix < '0' || suffix > '9') {
				return "unknown suffix used in time value";
			}
			seconds = FUNC1(val);
			break;
	}

	* (int *) ((char *) *config + offset) = seconds;
	return NULL;
}