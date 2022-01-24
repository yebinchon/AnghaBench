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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 int MAX_SUBKEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(HANDLE hFile, HKEY key, WCHAR *path)
{
    LONG rc;
    DWORD max_value_len = 256, value_len;
    DWORD max_data_bytes = 2048, data_size;
    DWORD subkey_len;
    DWORD i, type, path_len;
    WCHAR *value_name, *subkey_name, *subkey_path;
    BYTE *data;
    HKEY subkey;

    FUNC6(hFile, path);

    value_name = FUNC8(max_value_len * sizeof(WCHAR));
    data = FUNC8(max_data_bytes);

    i = 0;
    for (;;)
    {
        value_len = max_value_len;
        data_size = max_data_bytes;
        rc = FUNC2(key, i, value_name, &value_len, NULL, &type, data, &data_size);

        if (rc == ERROR_SUCCESS)
        {
            FUNC5(hFile, value_name, value_len, type, data, data_size);
            i++;
        }
        else if (rc == ERROR_MORE_DATA)
        {
            if (data_size > max_data_bytes)
            {
                max_data_bytes = data_size;
                data = FUNC9(data, max_data_bytes);
            }
            else
            {
                max_value_len *= 2;
                value_name = FUNC9(value_name, max_value_len * sizeof(WCHAR));
            }
        }
        else break;
    }

    FUNC7(data);
    FUNC7(value_name);

    subkey_name = FUNC8(MAX_SUBKEY_LEN * sizeof(WCHAR));

    path_len = FUNC10(path);

    i = 0;
    for (;;)
    {
        subkey_len = MAX_SUBKEY_LEN;
        rc = FUNC1(key, i, subkey_name, &subkey_len, NULL, NULL, NULL, NULL);
        if (rc == ERROR_SUCCESS)
        {
            subkey_path = FUNC4(path, path_len, subkey_name, subkey_len);
            if (!FUNC3(key, subkey_name, 0, KEY_READ, &subkey))
            {
                FUNC11(hFile, subkey, subkey_path);
                FUNC0(subkey);
            }
            FUNC7(subkey_path);
            i++;
        }
        else break;
    }

    FUNC7(subkey_name);
    return 0;
}