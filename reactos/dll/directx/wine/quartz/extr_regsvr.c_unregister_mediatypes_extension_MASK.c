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
struct regsvr_mediatype_extension {int /*<<< orphan*/  extension; scalar_t__ majortype; } ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/ * HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  extensions_keyname ; 
 int /*<<< orphan*/  mediatype_name ; 

__attribute__((used)) static HRESULT FUNC4(struct regsvr_mediatype_extension const *list)
{
    LONG res;
    HKEY mediatype_key;
    HKEY extensions_root_key = NULL;

    res = FUNC3(HKEY_CLASSES_ROOT, mediatype_name, 0,
			KEY_READ | KEY_WRITE, &mediatype_key);
    if (res == ERROR_FILE_NOT_FOUND) return S_OK;
    if (res != ERROR_SUCCESS) return FUNC0(res);

    res = FUNC3(mediatype_key, extensions_keyname, 0,
			KEY_READ | KEY_WRITE, &extensions_root_key);
    if (res == ERROR_FILE_NOT_FOUND)
	res = ERROR_SUCCESS;
    else if (res == ERROR_SUCCESS)
	for (; res == ERROR_SUCCESS && list->majortype; ++list) {
	    res = FUNC2(extensions_root_key, list->extension);
	    if (res == ERROR_FILE_NOT_FOUND) res = ERROR_SUCCESS;
	}

    FUNC1(mediatype_key);
    if (extensions_root_key)
	FUNC1(extensions_root_key);

    return res != ERROR_SUCCESS ? FUNC0(res) : S_OK;
}