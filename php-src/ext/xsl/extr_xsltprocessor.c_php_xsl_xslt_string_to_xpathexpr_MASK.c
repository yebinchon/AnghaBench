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
typedef  char xmlChar ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *FUNC5(const char *str)
{
	const xmlChar *string = (const xmlChar *)str;

	xmlChar *value;
	int str_len;

	str_len = FUNC4(string) + 3;

	if (FUNC3(string, '"')) {
		if (FUNC3(string, '\'')) {
			FUNC0(NULL, E_WARNING, "Cannot create XPath expression (string contains both quote and double-quotes)");
			return NULL;
		}
		value = (xmlChar*) FUNC1 (str_len, sizeof(xmlChar), 0);
		FUNC2((char*)value, str_len, "'%s'", string);
	} else {
		value = (xmlChar*) FUNC1 (str_len, sizeof(xmlChar), 0);
		FUNC2((char *)value, str_len, "\"%s\"", string);
	}
	return (char *) value;
}