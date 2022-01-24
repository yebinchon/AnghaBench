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
struct regsvr_interface {scalar_t__ iid; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  interface_keyname ; 

__attribute__((used)) static HRESULT FUNC5(struct regsvr_interface const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY interface_key;

    res = FUNC3(HKEY_CLASSES_ROOT, interface_keyname, 0,
			KEY_READ | KEY_WRITE, &interface_key);
    if (res == ERROR_FILE_NOT_FOUND) return S_OK;
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->iid; ++list) {
	WCHAR buf[39];

	FUNC4(list->iid, buf, 39);
	res = FUNC2(interface_key, buf);
	if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
    }

    FUNC1(interface_key);
error_return:
    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}