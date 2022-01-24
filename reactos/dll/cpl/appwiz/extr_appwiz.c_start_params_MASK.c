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
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  ADDON_GECKO ; 
 int /*<<< orphan*/  ADDON_MONO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

__attribute__((used)) static LONG FUNC4(const WCHAR *params, HWND hwnd_parent)
{
    static const WCHAR install_geckoW[] = {'i','n','s','t','a','l','l','_','g','e','c','k','o',0};
    static const WCHAR install_monoW[] = {'i','n','s','t','a','l','l','_','m','o','n','o',0};

    if(!params)
        return FALSE;

    if(!FUNC3(params, install_geckoW)) {
        FUNC2(ADDON_GECKO, hwnd_parent);
        return TRUE;
    }

    if(!FUNC3(params, install_monoW)) {
        FUNC2(ADDON_MONO, hwnd_parent);
        return TRUE;
    }

    FUNC0("unknown param %s\n", FUNC1(params));
    return FALSE;
}