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
typedef  enum content { ____Placeholder_content } content ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPCOLESTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLSID_WebBrowser ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int IsEmpty ; 
 int IsGUID ; 
 int IsHTML ; 
 int IsURL ; 
 int IsUnknown ; 
 int MAX_PATH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int URL_APPLY_GUESSFILE ; 
 int URL_APPLY_GUESSSCHEME ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum content FUNC8(LPCOLESTR name, CLSID *control_id)
{
    static const WCHAR mshtml_prefixW[] = {'m','s','h','t','m','l',':',0};
    WCHAR new_urlW[MAX_PATH];
    DWORD size = MAX_PATH;

    if (!name || !name[0])
    {
        FUNC5("name %s\n", FUNC7(name));
        return IsEmpty;
    }

    if (FUNC1(name, control_id) == S_OK ||
        FUNC0(name, control_id) == S_OK)
        return IsGUID;

    if (FUNC3 (name) ||
        FUNC4(name, new_urlW, &size, URL_APPLY_GUESSSCHEME|URL_APPLY_GUESSFILE) == S_OK)
    {
        *control_id = CLSID_WebBrowser;
        return IsURL;
    }

    if (!FUNC6(name, mshtml_prefixW, 7))
    {
        FUNC2("mshtml prefix not implemented\n");
        *control_id = CLSID_WebBrowser;
        return IsHTML;
    }

    return IsUnknown;
}