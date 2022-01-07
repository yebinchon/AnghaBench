
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int MAX_SUBKEY_LEN ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,int,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ RegEnumValueW (int ,int,int *,int*,int *,int*,int *,int*) ;
 int RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 int * build_subkey_path (int *,int,int *,int) ;
 int export_data (int ,int *,int,int,int *,int) ;
 int export_key_name (int ,int *) ;
 int heap_free (int *) ;
 int * heap_xalloc (int) ;
 int * heap_xrealloc (int *,int) ;
 int lstrlenW (int *) ;

__attribute__((used)) static int export_registry_data(HANDLE hFile, HKEY key, WCHAR *path)
{
    LONG rc;
    DWORD max_value_len = 256, value_len;
    DWORD max_data_bytes = 2048, data_size;
    DWORD subkey_len;
    DWORD i, type, path_len;
    WCHAR *value_name, *subkey_name, *subkey_path;
    BYTE *data;
    HKEY subkey;

    export_key_name(hFile, path);

    value_name = heap_xalloc(max_value_len * sizeof(WCHAR));
    data = heap_xalloc(max_data_bytes);

    i = 0;
    for (;;)
    {
        value_len = max_value_len;
        data_size = max_data_bytes;
        rc = RegEnumValueW(key, i, value_name, &value_len, ((void*)0), &type, data, &data_size);

        if (rc == ERROR_SUCCESS)
        {
            export_data(hFile, value_name, value_len, type, data, data_size);
            i++;
        }
        else if (rc == ERROR_MORE_DATA)
        {
            if (data_size > max_data_bytes)
            {
                max_data_bytes = data_size;
                data = heap_xrealloc(data, max_data_bytes);
            }
            else
            {
                max_value_len *= 2;
                value_name = heap_xrealloc(value_name, max_value_len * sizeof(WCHAR));
            }
        }
        else break;
    }

    heap_free(data);
    heap_free(value_name);

    subkey_name = heap_xalloc(MAX_SUBKEY_LEN * sizeof(WCHAR));

    path_len = lstrlenW(path);

    i = 0;
    for (;;)
    {
        subkey_len = MAX_SUBKEY_LEN;
        rc = RegEnumKeyExW(key, i, subkey_name, &subkey_len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (rc == ERROR_SUCCESS)
        {
            subkey_path = build_subkey_path(path, path_len, subkey_name, subkey_len);
            if (!RegOpenKeyExW(key, subkey_name, 0, KEY_READ, &subkey))
            {
                export_registry_data(hFile, subkey, subkey_path);
                RegCloseKey(subkey);
            }
            heap_free(subkey_path);
            i++;
        }
        else break;
    }

    heap_free(subkey_name);
    return 0;
}
