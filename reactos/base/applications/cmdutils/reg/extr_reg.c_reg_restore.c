
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LSTATUS ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 scalar_t__ RegRestoreKeyW (int ,int *,int ) ;
 int SE_BACKUP_NAME ;
 int SE_RESTORE_NAME ;
 int STRING_FUNC_HELP ;
 int STRING_INVALID_KEY ;
 int STRING_INVALID_SYNTAX ;
 int TRUE ;
 int output_error (scalar_t__) ;
 int output_message (int ,...) ;
 int parse_registry_key (int *,int *,int **,int **) ;
 int set_privilege (int ,int ) ;
 int struprW (int *) ;

__attribute__((used)) static int reg_restore(int argc, WCHAR* argv[])
{
    HKEY root, hkey;
    LSTATUS status;
    WCHAR* path, * long_key;

    if (argc != 4) goto error;

    if (!parse_registry_key(argv[2], &root, &path, &long_key))
        return 1;

    if (RegOpenKeyExW(root, path, 0, KEY_READ, &hkey))
    {
        output_message(STRING_INVALID_KEY);
        return 1;
    }

    if (!set_privilege(SE_BACKUP_NAME, TRUE)) return 1;
    if (!set_privilege(SE_RESTORE_NAME, TRUE)) return 1;

    status = RegRestoreKeyW(hkey, argv[3], 0);
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
