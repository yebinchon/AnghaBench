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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 char** registry_keys ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(char* sub_key, HKEY *hKey)
{/*{{{*/
	const char **key_name = registry_keys;

	if (sub_key) {
		size_t main_key_len;
		size_t sub_key_len = FUNC4(sub_key);
		char *reg_key;

		while (*key_name) {
			LONG ret;

			main_key_len = FUNC4(*key_name);
			reg_key = FUNC2(main_key_len + sub_key_len + 1);
			FUNC3(reg_key, *key_name, main_key_len);
			FUNC3(reg_key + main_key_len, sub_key, sub_key_len + 1);
			ret = FUNC0(HKEY_LOCAL_MACHINE, reg_key, 0, KEY_READ, hKey);
			FUNC1(reg_key);

			if (ret == ERROR_SUCCESS) {
				return 1;
			}
			++key_name;
		}
	} else {
		while (*key_name) {
			if (FUNC0(HKEY_LOCAL_MACHINE, *key_name, 0, KEY_READ, hKey) == ERROR_SUCCESS) {
				return 1;
			}
			++key_name;
		}
	}
	return 0;
}