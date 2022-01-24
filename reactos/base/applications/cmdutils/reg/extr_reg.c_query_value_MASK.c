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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_SUBKEY_LEN ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,char*,int*) ; 
 int /*<<< orphan*/  STRING_CANNOT_FIND ; 
 char* FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  newlineW ; 
 int /*<<< orphan*/  num_values_found ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(HKEY key, WCHAR *value_name, WCHAR *path, BOOL recurse)
{
    LONG rc;
    DWORD max_data_bytes = 2048, data_size;
    DWORD subkey_len;
    DWORD type, path_len, i;
    BYTE *data;
    WCHAR fmt[] = {'%','1','\n',0};
    WCHAR *subkey_name, *subkey_path;
    HKEY subkey;

    data = FUNC6(max_data_bytes);

    for (;;)
    {
        data_size = max_data_bytes;
        rc = FUNC3(key, value_name, NULL, &type, data, &data_size);
        if (rc == ERROR_MORE_DATA)
        {
            max_data_bytes = data_size;
            data = FUNC7(data, max_data_bytes);
        }
        else break;
    }

    if (rc == ERROR_SUCCESS)
    {
        FUNC9(fmt, path);
        FUNC10(value_name, type, data, data_size);
        FUNC9(newlineW);
        num_values_found++;
    }

    FUNC5(data);

    if (!recurse)
    {
        if (rc == ERROR_FILE_NOT_FOUND)
        {
            if (value_name && *value_name)
            {
                FUNC8(STRING_CANNOT_FIND);
                return 1;
            }
            FUNC9(fmt, path);
            FUNC10(NULL, REG_SZ, NULL, 0);
        }
        return 0;
    }

    subkey_name = FUNC6(MAX_SUBKEY_LEN * sizeof(WCHAR));

    path_len = FUNC11(path);

    i = 0;
    for (;;)
    {
        subkey_len = MAX_SUBKEY_LEN;
        rc = FUNC1(key, i, subkey_name, &subkey_len, NULL, NULL, NULL, NULL);
        if (rc == ERROR_SUCCESS)
        {
            subkey_path = FUNC4(path, path_len, subkey_name, subkey_len);
            if (!FUNC2(key, subkey_name, 0, KEY_READ, &subkey))
            {
                FUNC12(subkey, value_name, subkey_path, recurse);
                FUNC0(subkey);
            }
            FUNC5(subkey_path);
            i++;
        }
        else break;
    }

    FUNC5(subkey_name);
    return 0;
}