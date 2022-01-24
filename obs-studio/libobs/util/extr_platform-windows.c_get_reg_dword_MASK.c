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
struct reg_dword {int size; scalar_t__ return_value; scalar_t__ status; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

void FUNC3(HKEY hkey, LPCWSTR sub_key, LPCWSTR value_name,
		   struct reg_dword *info)
{
	struct reg_dword reg = {0};
	HKEY key;
	LSTATUS status;

	status = FUNC1(hkey, sub_key, 0, KEY_READ, &key);

	if (status != ERROR_SUCCESS) {
		info->status = status;
		info->size = 0;
		info->return_value = 0;
		return;
	}

	reg.size = sizeof(reg.return_value);

	reg.status = FUNC2(key, value_name, NULL, NULL,
				      (LPBYTE)&reg.return_value, &reg.size);

	FUNC0(key);

	*info = reg;
}