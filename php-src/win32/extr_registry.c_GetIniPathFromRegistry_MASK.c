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
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ MAXPATHLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PHPRC_REGISTRY_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 

char *FUNC5()
{/*{{{*/
	char *reg_location = NULL;
	HKEY hKey;

	if (FUNC0(NULL, &hKey)) {
		DWORD buflen = MAXPATHLEN;
		reg_location = FUNC4(MAXPATHLEN+1);
		if(FUNC2(hKey, PHPRC_REGISTRY_NAME, 0, NULL, reg_location, &buflen) != ERROR_SUCCESS) {
			FUNC1(hKey);
			FUNC3(reg_location);
			reg_location = NULL;
			return reg_location;
		}
		FUNC1(hKey);
	}
	return reg_location;
}