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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static BOOL FUNC9(const WCHAR *ext, CLSID *clsid)
{
    WCHAR fileid[64], progid[64];
    DWORD res;
    LONG size;
    HKEY hkey;
    HRESULT hres;

    static const WCHAR script_engineW[] =
        {'\\','S','c','r','i','p','t','E','n','g','i','n','e',0};

    res = FUNC3(HKEY_CLASSES_ROOT, ext, &hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    size = FUNC0(fileid);
    res = FUNC4(hkey, NULL, fileid, &size);
    FUNC2(hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    FUNC6("fileid is %s\n", FUNC8(fileid));

    FUNC7(fileid, script_engineW);
    res = FUNC3(HKEY_CLASSES_ROOT, fileid, &hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    size = FUNC0(progid);
    res = FUNC4(hkey, NULL, progid, &size);
    FUNC2(hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    FUNC6("ProgID is %s\n", FUNC8(progid));

    hres = FUNC1(progid, clsid);
    return FUNC5(hres);
}