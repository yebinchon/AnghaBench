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

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(char *str)
{
	int len;
	char *p;

	if (!str || !*str) {
		return 0;
	}

	/* strings with special characters will need to be quoted, as a safety measure we
	 * add 2 bytes for the quotes just in case.
	 */
	len = FUNC0(str) + 2;
	p = str;
	/* rfc822_cat() will escape all " and \ characters, therefor we need to increase
	 * our buffer length to account for these characters.
	 */
	while ((p = FUNC1(p, "\\\""))) {
		p++;
		len++;
	}

	return len;
}