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
struct regsvr_mediatype_parsing {scalar_t__* line; int /*<<< orphan*/ * subtype; int /*<<< orphan*/ * majortype; } ;
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
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mediatype_name ; 
 int /*<<< orphan*/  sourcefilter_valuename ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 

__attribute__((used)) static HRESULT FUNC9(struct regsvr_mediatype_parsing const *list)
{
    LONG res = ERROR_SUCCESS;
    HKEY mediatype_key;
    WCHAR buf[39];
    int i;

    res = FUNC2(HKEY_CLASSES_ROOT, mediatype_name, 0, NULL, 0,
			  KEY_READ | KEY_WRITE, NULL, &mediatype_key, NULL);
    if (res != ERROR_SUCCESS) return FUNC0(res);

    for (; res == ERROR_SUCCESS && list->majortype; ++list) {
	HKEY majortype_key = NULL;
	HKEY subtype_key = NULL;

	FUNC5(list->majortype, buf, 39);
	res = FUNC2(mediatype_key, buf, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &majortype_key, NULL);
	if (res != ERROR_SUCCESS) goto error_close_keys;

	FUNC5(list->subtype, buf, 39);
	res = FUNC2(majortype_key, buf, 0, NULL, 0,
			      KEY_READ | KEY_WRITE, NULL, &subtype_key, NULL);
	if (res != ERROR_SUCCESS) goto error_close_keys;

	FUNC5(&CLSID_AsyncReader, buf, 39);
        res = FUNC4(subtype_key, sourcefilter_valuename, 0, REG_SZ, (const BYTE*)buf,
			     (FUNC7(buf) + 1) * sizeof(WCHAR));
	if (res != ERROR_SUCCESS) goto error_close_keys;

	for(i = 0; list->line[i]; i++) {
	    char buffer[3];
	    FUNC8(buffer, "%d", i);
            res = FUNC3(subtype_key, buffer, 0, REG_SZ, (const BYTE*)list->line[i],
				 FUNC6(list->line[i]));
	    if (res != ERROR_SUCCESS) goto error_close_keys;
	}

error_close_keys:
	if (majortype_key)
	    FUNC1(majortype_key);
	if (subtype_key)
	    FUNC1(subtype_key);
    }

    FUNC1(mediatype_key);

    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}