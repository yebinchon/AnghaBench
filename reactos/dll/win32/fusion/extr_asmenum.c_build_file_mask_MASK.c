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
typedef  int /*<<< orphan*/  token ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  minor ;
typedef  int /*<<< orphan*/  major ;
typedef  int /*<<< orphan*/  build ;
typedef  char* WORD ;
typedef  char WCHAR ;
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  IAssemblyName ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  char* BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  ASM_NAME_BUILD_NUMBER ; 
 int /*<<< orphan*/  ASM_NAME_MAJOR_VERSION ; 
 int /*<<< orphan*/  ASM_NAME_MINOR_VERSION ; 
 int /*<<< orphan*/  ASM_NAME_PUBLIC_KEY_TOKEN ; 
 int /*<<< orphan*/  ASM_NAME_REVISION_NUMBER ; 
 int BYTES_PER_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int*) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*) ; 

__attribute__((used)) static void FUNC5(IAssemblyName *name, int depth, const WCHAR *path,
                            const WCHAR *prefix, WCHAR *buf)
{
    static const WCHAR star[] = {'*',0};
    static const WCHAR ss_fmt[] = {'%','s','\\','%','s',0};
    static const WCHAR sss_fmt[] = {'%','s','\\','%','s','_','_','%','s',0};
    static const WCHAR ssss_fmt[] = {'%','s','\\','%','s','%','s','_','_','%','s',0};
    static const WCHAR ver_fmt[] = {'%','u','.','%','u','.','%','u','.','%','u',0};
    static const WCHAR star_fmt[] = {'%','s','\\','*',0};
    static const WCHAR star_prefix_fmt[] = {'%','s','\\','%','s','*',0};
    WCHAR disp[MAX_PATH], version[24]; /* strlen("65535") * 4 + 3 + 1 */
    LPCWSTR verptr, pubkeyptr;
    HRESULT hr;
    DWORD size, major_size, minor_size, build_size, revision_size;
    WORD major, minor, build, revision;
    WCHAR token_str[TOKEN_LENGTH + 1];
    BYTE token[BYTES_PER_TOKEN];

    if (!name)
    {
        if (prefix && depth == 1)
            FUNC3(buf, star_prefix_fmt, path, prefix);
        else
            FUNC3(buf, star_fmt, path);
        return;
    }
    if (depth == 0)
    {
        size = MAX_PATH;
        *disp = '\0';
        hr = FUNC0(name, &size, disp);
        if (FUNC2(hr))
            FUNC3(buf, ss_fmt, path, disp);
        else
            FUNC3(buf, ss_fmt, path, star);
    }
    else if (depth == 1)
    {
        major_size = sizeof(major);
        FUNC1(name, ASM_NAME_MAJOR_VERSION, &major, &major_size);

        minor_size = sizeof(minor);
        FUNC1(name, ASM_NAME_MINOR_VERSION, &minor, &minor_size);

        build_size = sizeof(build);
        FUNC1(name, ASM_NAME_BUILD_NUMBER, &build, &build_size);

        revision_size = sizeof(revision);
        FUNC1(name, ASM_NAME_REVISION_NUMBER, &revision, &revision_size);

        if (!major_size || !minor_size || !build_size || !revision_size) verptr = star;
        else
        {
            FUNC3(version, ver_fmt, major, minor, build, revision);
            verptr = version;
        }

        size = sizeof(token);
        FUNC1(name, ASM_NAME_PUBLIC_KEY_TOKEN, token, &size);

        if (!size) pubkeyptr = star;
        else
        {
            FUNC4(token, token_str);
            pubkeyptr = token_str;
        }

        if (prefix)
            FUNC3(buf, ssss_fmt, path, prefix, verptr, pubkeyptr);
        else
            FUNC3(buf, sss_fmt, path, verptr, pubkeyptr);
    }
}