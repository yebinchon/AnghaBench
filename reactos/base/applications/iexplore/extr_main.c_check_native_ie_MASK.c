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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPWORD ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int TRUE ; 
 scalar_t__ FUNC5 (void*,char const*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8(void)
{
    DWORD handle, size;
    LPWSTR file_desc;
    UINT bytes;
    void* buf;
    BOOL ret = TRUE;
    LPWORD translation;

    static const WCHAR browseui_dllW[] = {'b','r','o','w','s','e','u','i','.','d','l','l',0};
    static const WCHAR wineW[] = {'W','i','n','e',0};
    static const WCHAR translationW[] =
        {'\\','V','a','r','F','i','l','e','I','n','f','o',
         '\\','T','r','a','n','s','l','a','t','i','o','n',0};
    static const WCHAR file_desc_fmtW[] =
        {'\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o',
         '\\','%','0','4','x','%','0','4','x',
         '\\','F','i','l','e','D','e','s','c','r','i','p','t','i','o','n',0};
    WCHAR file_desc_strW[48];

    size = FUNC0(browseui_dllW, &handle);
    if(!size)
        return TRUE;

    buf = FUNC3(FUNC2(), 0, size);
    FUNC1(browseui_dllW, 0, size,buf);
    if (FUNC5(buf, translationW, (void **)&translation, &bytes))
    {
        FUNC7(file_desc_strW, file_desc_fmtW, translation[0], translation[1]);
        ret = !FUNC5(buf, file_desc_strW, (void**)&file_desc, &bytes) || !FUNC6(file_desc, wineW);
    }

    FUNC4(FUNC2(), 0, buf);
    return ret;
}