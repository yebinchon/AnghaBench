
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HKEY ;
typedef int HANDLE ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int FALSE ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 int STRING_FUNC_HELP ;
 int STRING_INVALID_KEY ;
 int STRING_INVALID_SYNTAX ;
 int export_file_header (int ) ;
 int export_newline (int ) ;
 int export_registry_data (int ,int ,int *) ;
 int get_file_handle (int *,int ) ;
 int is_overwrite_switch (int *) ;
 int output_message (int ,...) ;
 int parse_registry_key (int *,int *,int **,int **) ;
 int struprW (int *) ;

int reg_export(int argc, WCHAR *argv[])
{
    HKEY root, hkey;
    WCHAR *path, *long_key;
    BOOL overwrite_file = FALSE;
    HANDLE hFile;
    int ret;

    if (argc == 3 || argc > 5)
        goto error;

    if (!parse_registry_key(argv[2], &root, &path, &long_key))
        return 1;

    if (argc == 5 && !(overwrite_file = is_overwrite_switch(argv[4])))
        goto error;

    if (RegOpenKeyExW(root, path, 0, KEY_READ, &hkey))
    {
        output_message(STRING_INVALID_KEY);
        return 1;
    }

    hFile = get_file_handle(argv[3], overwrite_file);
    export_file_header(hFile);
    ret = export_registry_data(hFile, hkey, long_key);
    export_newline(hFile);
    CloseHandle(hFile);

    RegCloseKey(hkey);

    return ret;

error:
    output_message(STRING_INVALID_SYNTAX);
    output_message(STRING_FUNC_HELP, struprW(argv[1]));
    return 1;
}
