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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  char BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_SUBKEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  newlineW ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(HKEY key, WCHAR *path, BOOL recurse)
{
    LONG rc;
    DWORD max_value_len = 256, value_len;
    DWORD max_data_bytes = 2048, data_size;
    DWORD subkey_len;
    DWORD i, type, path_len;
    WCHAR fmt[] = {'%','1','\n',0};
    WCHAR fmt_path[] = {'%','1','\\','%','2','\n',0};
    WCHAR *value_name, *subkey_name, *subkey_path;
    BYTE *data;
    HKEY subkey;

    FUNC8(fmt, path);

    value_name = FUNC6(max_value_len * sizeof(WCHAR));
    data = FUNC6(max_data_bytes);

    i = 0;
    for (;;)
    {
        value_len = max_value_len;
        data_size = max_data_bytes;
        rc = FUNC2(key, i, value_name, &value_len, NULL, &type, data, &data_size);
        if (rc == ERROR_SUCCESS)
        {
            FUNC9(value_name, type, data, data_size);
            i++;
        }
        else if (rc == ERROR_MORE_DATA)
        {
            if (data_size > max_data_bytes)
            {
                max_data_bytes = data_size;
                data = FUNC7(data, max_data_bytes);
            }
            else
            {
                max_value_len *= 2;
                value_name = FUNC7(value_name, max_value_len * sizeof(WCHAR));
            }
        }
        else break;
    }

    FUNC5(data);
    FUNC5(value_name);

    if (i || recurse)
        FUNC8(newlineW);

    subkey_name = FUNC6(MAX_SUBKEY_LEN * sizeof(WCHAR));

    path_len = FUNC10(path);

    i = 0;
    for (;;)
    {
        subkey_len = MAX_SUBKEY_LEN;
        rc = FUNC1(key, i, subkey_name, &subkey_len, NULL, NULL, NULL, NULL);
        if (rc == ERROR_SUCCESS)
        {
            if (recurse)
            {
                subkey_path = FUNC4(path, path_len, subkey_name, subkey_len);
                if (!FUNC3(key, subkey_name, 0, KEY_READ, &subkey))
                {
                    FUNC11(subkey, subkey_path, recurse);
                    FUNC0(subkey);
                }
                FUNC5(subkey_path);
            }
            else FUNC8(fmt_path, path, subkey_name);
            i++;
        }
        else break;
    }

    FUNC5(subkey_name);

    if (i && !recurse)
        FUNC8(newlineW);

    return 0;
}