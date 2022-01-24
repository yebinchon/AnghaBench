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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  clsid_keyname ; 
 int /*<<< orphan*/  curver_keyname ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static LONG FUNC6(
    WCHAR const *clsid,
    char const *progid,
    char const *curver_progid,
    char const *name,
    char const *extra)
{
    LONG res;
    HKEY progid_key;

    res = FUNC1(HKEY_CLASSES_ROOT, progid, 0,
			  NULL, 0, KEY_READ | KEY_WRITE, NULL,
			  &progid_key, NULL);
    if (res != ERROR_SUCCESS) return res;

    if (name) {
        res = FUNC2(progid_key, NULL, 0, REG_SZ, (const BYTE*)name, FUNC5(name) + 1);
	if (res != ERROR_SUCCESS) goto error_close_progid_key;
    }

    if (clsid) {
	res = FUNC4(progid_key, clsid_keyname, clsid);
	if (res != ERROR_SUCCESS) goto error_close_progid_key;
    }

    if (curver_progid) {
	res = FUNC3(progid_key, curver_keyname,
				     curver_progid);
	if (res != ERROR_SUCCESS) goto error_close_progid_key;
    }

    if (extra) {
	HKEY extra_key;

	res = FUNC1(progid_key, extra, 0,
			      NULL, 0, KEY_READ | KEY_WRITE, NULL,
			      &extra_key, NULL);
	if (res == ERROR_SUCCESS)
	    FUNC0(extra_key);
    }

error_close_progid_key:
    FUNC0(progid_key);
    return res;
}