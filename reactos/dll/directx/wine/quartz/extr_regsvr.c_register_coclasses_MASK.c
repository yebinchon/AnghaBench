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
struct regsvr_coclass {int /*<<< orphan*/  progid_extra; scalar_t__ name; int /*<<< orphan*/ * progid; int /*<<< orphan*/ * viprogid; scalar_t__ ips32_tmodel; scalar_t__ ips32; int /*<<< orphan*/ * ips; scalar_t__ clsid; } ;
typedef  int /*<<< orphan*/  WCHAR ;
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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * clsid_keyname ; 
 int /*<<< orphan*/ * ips32_keyname ; 
 int /*<<< orphan*/  ips_keyname ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  progid_keyname ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * tmodel_valuename ; 
 int /*<<< orphan*/  viprogid_keyname ; 

__attribute__((used)) static HRESULT FUNC9(struct regsvr_coclass const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY coclass_key;

    res = FUNC2(HKEY_CLASSES_ROOT, clsid_keyname, 0, NULL, 0,
			  KEY_READ | KEY_WRITE, NULL, &coclass_key, NULL);
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->clsid; ++list) {
	WCHAR buf[39];
	HKEY clsid_key;

	FUNC4(list->clsid, buf, 39);
	res = FUNC2(coclass_key, buf, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &clsid_key, NULL);
	if (res != ERROR_SUCCESS) goto error_close_coclass_key;

	if (list->name) {
            res = FUNC3(clsid_key, NULL, 0, REG_SZ, (const BYTE*)list->name,
				 FUNC8(list->name) + 1);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
	}

	if (list->ips) {
	    res = FUNC6(clsid_key, ips_keyname, list->ips);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
	}

	if (list->ips32) {
	    HKEY ips32_key;

	    res = FUNC2(clsid_key, ips32_keyname, 0, NULL, 0,
				  KEY_READ | KEY_WRITE, NULL,
				  &ips32_key, NULL);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;

            res = FUNC3(ips32_key, NULL, 0, REG_SZ, (const BYTE*)list->ips32,
				 FUNC5(list->ips32) + 1);
	    if (res == ERROR_SUCCESS && list->ips32_tmodel)
		res = FUNC3(ips32_key, tmodel_valuename, 0, REG_SZ,
                                     (const BYTE*)list->ips32_tmodel,
				     FUNC8(list->ips32_tmodel) + 1);
	    FUNC1(ips32_key);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
	}

	if (list->progid) {
	    res = FUNC6(clsid_key, progid_keyname,
					 list->progid);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;

	    res = FUNC7(buf, list->progid, NULL,
				  list->name, list->progid_extra);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
	}

	if (list->viprogid) {
	    res = FUNC6(clsid_key, viprogid_keyname,
					 list->viprogid);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;

	    res = FUNC7(buf, list->viprogid, list->progid,
				  list->name, list->progid_extra);
	    if (res != ERROR_SUCCESS) goto error_close_clsid_key;
	}

    error_close_clsid_key:
	FUNC1(clsid_key);
    }

error_close_coclass_key:
    FUNC1(coclass_key);
error_return:
    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}