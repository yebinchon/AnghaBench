#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  exec_info ;
typedef  unsigned char WCHAR ;
struct TYPE_4__ {int cbSize; int /*<<< orphan*/  nShow; int /*<<< orphan*/  lpFile; } ;
typedef  TYPE_1__ SHELLEXECUTEINFOW ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  PARSE_SCHEMA ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC10(LPCWSTR url)
{
    SHELLEXECUTEINFOW exec_info;
    WCHAR app[64];
    HKEY hkey;
    DWORD res, type;
    HRESULT hres;

    static const WCHAR wszURLProtocol[] = {'U','R','L',' ','P','r','o','t','o','c','o','l',0};

    hres = FUNC1(url, PARSE_SCHEMA, 0, app, FUNC0(app), NULL, 0);
    if(FUNC2(hres))
        return FALSE;

    res = FUNC4(HKEY_CLASSES_ROOT, app, &hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    res = FUNC5(hkey, wszURLProtocol, NULL, &type, NULL, NULL);
    FUNC3(hkey);
    if(res != ERROR_SUCCESS || type != REG_SZ)
        return FALSE;

    FUNC7("opening application %s\n", FUNC8(app));

    FUNC9(&exec_info, 0, sizeof(exec_info));
    exec_info.cbSize = sizeof(exec_info);
    exec_info.lpFile = url;
    exec_info.nShow = SW_SHOW;

    return FUNC6(&exec_info);
}