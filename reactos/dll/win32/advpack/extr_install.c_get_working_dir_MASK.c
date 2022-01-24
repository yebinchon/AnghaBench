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
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  working_dir; } ;
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  TYPE_1__ ADVInfo ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static HRESULT FUNC9(ADVInfo *info, LPCWSTR inf_filename, LPCWSTR working_dir)
{
    WCHAR path[MAX_PATH];
    LPCWSTR ptr;
    DWORD len;

    static const WCHAR backslash[] = {'\\',0};
    static const WCHAR inf_dir[] = {'\\','I','N','F',0};

    if ((ptr = FUNC8(inf_filename, '\\')))
    {
        len = ptr - inf_filename + 1;
        ptr = inf_filename;
    }
    else if (working_dir && *working_dir)
    {
        len = FUNC7(working_dir) + 1;
        ptr = working_dir;
    }
    else
    {
        FUNC0(MAX_PATH, path);
        FUNC5(path, backslash);
        FUNC5(path, inf_filename);

        /* check if the INF file is in the current directory */
        if (FUNC1(path) != INVALID_FILE_ATTRIBUTES)
        {
            FUNC0(MAX_PATH, path);
        }
        else
        {
            /* default to the windows\inf directory if all else fails */
            FUNC3(path, MAX_PATH);
            FUNC5(path, inf_dir);
        }

        len = FUNC7(path) + 1;
        ptr = path;
    }

    info->working_dir = FUNC4(FUNC2(), 0, len * sizeof(WCHAR));
    if (!info->working_dir)
        return E_OUTOFMEMORY;

    FUNC6(info->working_dir, ptr, len);

    return S_OK;
}