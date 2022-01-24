#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * config_dir; } ;
typedef  TYPE_1__ settings_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static BOOL
FUNC9(const WCHAR *workdir, const WCHAR *fname, const settings_t *s)
{
    WCHAR tmp[MAX_PATH];
    const WCHAR *config_file = NULL;
    const WCHAR *config_dir = NULL;
#ifndef UNICODE
    WCHAR widepath[MAX_PATH];
#endif

    /* convert fname to full path */
    if (FUNC2(fname) )
    {
        FUNC5(tmp, FUNC4(tmp), L"%s\\%s", workdir, fname);
        config_file = tmp;
    }
    else
    {
        config_file = fname;
    }

#ifdef UNICODE
    config_dir = s->config_dir;
#else
    if (FUNC1(CP_UTF8, 0, s->config_dir, -1, widepath, MAX_PATH) == 0)
    {
        FUNC0(M_SYSERR, FUNC3("Failed to convert config_dir name to WideChar"));
        return FALSE;
    }
    config_dir = widepath;
#endif

    if (FUNC7(config_dir, config_file, FUNC6(config_dir)) == 0
        && FUNC8(config_file + FUNC6(config_dir), L"..") == NULL)
    {
        return TRUE;
    }

    return FALSE;
}