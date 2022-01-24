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
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_COMMON_FAVORITES ; 
 int /*<<< orphan*/  CSIDL_FAVORITES ; 
 int /*<<< orphan*/  IDR_BROWSE_MAIN_MENU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieframe_instance ; 

__attribute__((used)) static HMENU FUNC7(void)
{
    HMENU menu = FUNC0(ieframe_instance, FUNC1(IDR_BROWSE_MAIN_MENU));
    HMENU favmenu = FUNC5(menu);
    WCHAR path[MAX_PATH];

    FUNC4(FUNC6(menu));

    if(FUNC2(NULL, CSIDL_COMMON_FAVORITES, NULL, SHGFP_TYPE_CURRENT, path) == S_OK)
        FUNC3(favmenu, favmenu, path);

    if(FUNC2(NULL, CSIDL_FAVORITES, NULL, SHGFP_TYPE_CURRENT, path) == S_OK)
        FUNC3(favmenu, favmenu, path);

    return menu;
}