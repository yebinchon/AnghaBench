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
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/ * HINF ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int MAX_FIELD_LENGTH ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*,int) ; 
 char* FUNC10 (char**,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (char*,char) ; 
 int FUNC14 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC15(HINF hInf, LPCWSTR pszInstallSection, LPCWSTR pszWorkingDir)
{
    WCHAR field[MAX_FIELD_LENGTH];
    WCHAR line[MAX_FIELD_LENGTH];
    WCHAR dest[MAX_PATH];
    INFCONTEXT context;
    DWORD size;
    int ldid;

    static const WCHAR source_dir[] = {'S','o','u','r','c','e','D','i','r',0};

    static const WCHAR custDestW[] = {
        'C','u','s','t','o','m','D','e','s','t','i','n','a','t','i','o','n',0
    };

    if (!FUNC6(NULL, hInf, pszInstallSection, custDestW,
                           field, MAX_FIELD_LENGTH, &size))
        return;

    if (!FUNC4(hInf, field, NULL, &context))
        return;

    do
    {
        LPWSTR value, ptr, key, key_copy = NULL;
        DWORD flags = 0;

        FUNC6(&context, NULL, NULL, NULL,
                          line, MAX_FIELD_LENGTH, &size);

        /* SetupGetLineTextW returns the value if there is only one key, but
         * returns the whole line if there is more than one key
         */
        if (!(value = FUNC13(line, '=')))
        {
            FUNC7(&context, 0, NULL, 0, &size);
            key = FUNC2(FUNC1(), 0, size * sizeof(WCHAR));
            key_copy = key;
            FUNC7(&context, 0, key, size, &size);
            value = line;
        }
        else
        {
            key = line;
            *(value++) = '\0';
        }

        /* remove leading whitespace from the value */
        while (*value == ' ')
            value++;

        /* Extract the flags */
        ptr = FUNC13(value, ',');
        if (ptr) {
            *ptr = '\0';
            flags = FUNC14(ptr+1, NULL, 10);
        }

        /* set dest to pszWorkingDir if key is SourceDir */
        if (pszWorkingDir && !FUNC11(value, source_dir))
            FUNC12(dest, pszWorkingDir, MAX_PATH);
        else
            FUNC9(hInf, value, dest, MAX_PATH);

        /* If prompting required, provide dialog to request path */
        if (flags & 0x04)
            FUNC0("Need to support changing paths - default will be used\n");

        /* set all ldids to dest */
        while ((ptr = FUNC10(&key, ',', FALSE)))
        {
            ldid = FUNC14(ptr, NULL, 10);
            FUNC8(hInf, ldid, dest);
        }
        FUNC3(FUNC1(), 0, key_copy);
    } while (FUNC5(&context, &context));
}