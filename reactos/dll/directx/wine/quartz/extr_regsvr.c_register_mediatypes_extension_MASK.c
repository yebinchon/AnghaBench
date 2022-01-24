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
struct regsvr_mediatype_extension {int /*<<< orphan*/ * subtype; int /*<<< orphan*/ * majortype; int /*<<< orphan*/  extension; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_AsyncReader ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/ * HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  extensions_keyname ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mediatype_name ; 
 int /*<<< orphan*/  sourcefilter_valuename ; 
 int /*<<< orphan*/  subtype_valuename ; 

__attribute__((used)) static HRESULT FUNC7(struct regsvr_mediatype_extension const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY mediatype_key;
    HKEY extensions_root_key = NULL;
    WCHAR buf[39];

    res = FUNC3(HKEY_CLASSES_ROOT, mediatype_name, 0, NULL, 0,
			  KEY_READ | KEY_WRITE, NULL, &mediatype_key, NULL);
    if (res != ERROR_SUCCESS) return FUNC0(res);

    res = FUNC3(mediatype_key, extensions_keyname, 0, NULL, 0,
			  KEY_READ | KEY_WRITE, NULL, &extensions_root_key, NULL);
    if (res != ERROR_SUCCESS) goto error_return;

    for (; res == ERROR_SUCCESS && list->majortype; ++list) {
	HKEY extension_key;

	res = FUNC2(extensions_root_key, list->extension, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &extension_key, NULL);
	if (res != ERROR_SUCCESS) break;

	FUNC5(list->majortype, buf, 39);
        res = FUNC4(extension_key, mediatype_name, 0, REG_SZ, (const BYTE*)buf,
			     (FUNC6(buf) + 1) * sizeof(WCHAR));
	if (res != ERROR_SUCCESS) goto error_close_key;

	FUNC5(list->subtype, buf, 39);
        res = FUNC4(extension_key, subtype_valuename, 0, REG_SZ, (const BYTE*)buf,
			     (FUNC6(buf) + 1) * sizeof(WCHAR));
	if (res != ERROR_SUCCESS) goto error_close_key;

	FUNC5(&CLSID_AsyncReader, buf, 39);
        res = FUNC4(extension_key, sourcefilter_valuename, 0, REG_SZ, (const BYTE*)buf,
			     (FUNC6(buf) + 1) * sizeof(WCHAR));
	if (res != ERROR_SUCCESS) goto error_close_key;

error_close_key:
	FUNC1(extension_key);
    }

error_return:
    FUNC1(mediatype_key);
    if (extensions_root_key)
	FUNC1(extensions_root_key);

    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}