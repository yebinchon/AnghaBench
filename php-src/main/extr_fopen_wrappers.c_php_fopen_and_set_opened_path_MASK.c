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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CWD_EXPAND ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *FUNC6(const char *path, const char *mode, zend_string **opened_path)
{
	FILE *fp;

	if (FUNC3((char *)path)) {
		return NULL;
	}
	fp = FUNC0(path, mode);
	if (fp && opened_path) {
		//TODO :avoid reallocation
		char *tmp = FUNC2(path, NULL, NULL, 0, CWD_EXPAND);
		if (tmp) {
			*opened_path = FUNC5(tmp, FUNC4(tmp), 0);
			FUNC1(tmp);
		}
	}
	return fp;
}