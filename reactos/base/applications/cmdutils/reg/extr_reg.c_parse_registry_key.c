
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int HKEY ;
typedef int BOOL ;


 int FALSE ;
 int STRING_INVALID_SYSTEM_KEY ;
 int TRUE ;
 scalar_t__* get_long_key (int ,scalar_t__*) ;
 int output_message (int ,scalar_t__ const*) ;
 int path_get_rootkey (scalar_t__ const*) ;
 int sane_path (scalar_t__ const*) ;
 scalar_t__* strchrW (scalar_t__ const*,char) ;

BOOL parse_registry_key(const WCHAR *key, HKEY *root, WCHAR **path, WCHAR **long_key)
{
    if (!sane_path(key))
        return FALSE;

    *path = strchrW(key, '\\');
    if (*path) (*path)++;

    *root = path_get_rootkey(key);
    if (!*root)
    {
        if (*path) *(*path - 1) = 0;
        output_message(STRING_INVALID_SYSTEM_KEY, key);
        return FALSE;
    }

    *long_key = get_long_key(*root, *path);

    return TRUE;
}
