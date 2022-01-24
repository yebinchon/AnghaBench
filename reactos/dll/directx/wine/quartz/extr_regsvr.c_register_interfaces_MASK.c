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
struct regsvr_interface {scalar_t__ num_methods; scalar_t__ ps_clsid32; scalar_t__ ps_clsid; scalar_t__ base_iid; scalar_t__ name; scalar_t__ iid; } ;
typedef  char WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  base_ifa_keyname ; 
 char* interface_keyname ; 
 int FUNC6 (char*) ; 
 char* num_methods_keyname ; 
 int /*<<< orphan*/  ps_clsid32_keyname ; 
 int /*<<< orphan*/  ps_clsid_keyname ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC10(struct regsvr_interface const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY interface_key;

    res = FUNC2(HKEY_CLASSES_ROOT, interface_keyname, 0, NULL, 0,
			  KEY_READ | KEY_WRITE, NULL, &interface_key, NULL);
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->iid; ++list) {
	WCHAR buf[39];
	HKEY iid_key;

	FUNC5(list->iid, buf, 39);
	res = FUNC2(interface_key, buf, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &iid_key, NULL);
	if (res != ERROR_SUCCESS) goto error_close_interface_key;

	if (list->name) {
            res = FUNC3(iid_key, NULL, 0, REG_SZ, (const BYTE*)list->name,
				 FUNC9(list->name) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_iid_key;
	}

	if (list->base_iid) {
	    res = FUNC7(iid_key, base_ifa_keyname, list->base_iid);
	    if (res != ERROR_SUCCESS) goto error_close_iid_key;
	}

	if (0 <= list->num_methods) {
	    static const WCHAR fmt[] = { '%', 'd', 0 };
	    HKEY key;

	    res = FUNC2(iid_key, num_methods_keyname, 0, NULL, 0,
				  KEY_READ | KEY_WRITE, NULL, &key, NULL);
	    if (res != ERROR_SUCCESS) goto error_close_iid_key;

	    FUNC8(buf, fmt, list->num_methods);
            res = FUNC4(key, NULL, 0, REG_SZ, (const BYTE*)buf,
				 (FUNC6(buf) + 1) * sizeof(WCHAR));
	    FUNC1(key);

	    if (res != ERROR_SUCCESS) goto error_close_iid_key;
	}

	if (list->ps_clsid) {
	    res = FUNC7(iid_key, ps_clsid_keyname, list->ps_clsid);
	    if (res != ERROR_SUCCESS) goto error_close_iid_key;
	}

	if (list->ps_clsid32) {
	    res = FUNC7(iid_key, ps_clsid32_keyname, list->ps_clsid32);
	    if (res != ERROR_SUCCESS) goto error_close_iid_key;
	}

    error_close_iid_key:
	FUNC1(iid_key);
    }

error_close_interface_key:
    FUNC1(interface_key);
error_return:
    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}