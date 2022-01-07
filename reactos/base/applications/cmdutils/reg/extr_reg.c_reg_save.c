
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LSTATUS ;
typedef int HKEY ;


 int DeleteFile (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetFileAttributes (int *) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int KEY_READ ;
 int REG_LATEST_FORMAT ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ RegSaveKeyExW (int ,int *,int *,int ) ;
 int SE_BACKUP_NAME ;
 int STRING_FUNC_HELP ;
 int STRING_INVALID_KEY ;
 int STRING_INVALID_SYNTAX ;
 int STRING_OVERWRITE_FILE ;
 int TRUE ;
 scalar_t__ ask_confirm (int ,int *) ;
 int output_error (scalar_t__) ;
 int output_message (int ,...) ;
 int parse_registry_key (int *,int *,int **,int **) ;
 int set_privilege (int ,int ) ;
 int strcmpiW (int *,char*) ;
 int struprW (int *) ;

__attribute__((used)) static int reg_save(int argc, WCHAR* argv[]) {
    HKEY root, hkey;
    LSTATUS status;
    WCHAR* path, *long_key;

    if (argc < 4 || argc > 5) goto error;

    if (!parse_registry_key(argv[2], &root, &path, &long_key))
        return 1;

    if (GetFileAttributes(argv[3]) != INVALID_FILE_ATTRIBUTES)
    {
        if (argc == 5 && !strcmpiW(argv[4], L"/y"))
        {
            DeleteFile(argv[3]);
        }
        else
        {
            if (ask_confirm(STRING_OVERWRITE_FILE, argv[3]))
                DeleteFile(argv[3]);
        }
    }

    if (RegOpenKeyExW(root, path, 0, KEY_READ, &hkey))
    {
        output_message(STRING_INVALID_KEY);
        return 1;
    }

    if (!set_privilege(SE_BACKUP_NAME, TRUE)) return 1;

    status = RegSaveKeyExW(hkey, argv[3], ((void*)0), REG_LATEST_FORMAT);
    RegCloseKey(hkey);

    if (status != ERROR_SUCCESS) {
        output_error(status);
        return 1;
    }

    return 0;

error:
    output_message(STRING_INVALID_SYNTAX);
    output_message(STRING_FUNC_HELP, struprW(argv[1]));
    return 1;
}
