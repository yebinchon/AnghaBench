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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int /*<<< orphan*/ *) ; 
 int WSDL_NO_STRING_MARKER ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *str, smart_str *out)
{
	if (str) {
		int i = FUNC2(str);
		FUNC0(i, out);
		if (i > 0) {
			FUNC1(str, i, out);
		}
	} else {
		FUNC0(WSDL_NO_STRING_MARKER, out);
	}
}