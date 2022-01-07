
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int *,int ,int ,int *) ;
 int STRING_CANNOT_FIND ;
 int STRING_MATCHES_FOUND ;
 int newlineW ;
 int num_values_found ;
 int output_message (int ,...) ;
 int output_string (int ) ;
 int query_all (int ,int *,scalar_t__) ;
 int query_value (int ,int *,int *,scalar_t__) ;

__attribute__((used)) static int reg_query(HKEY root, WCHAR *path, WCHAR *key_name, WCHAR *value_name,
                     BOOL value_empty, BOOL recurse)
{
    HKEY key;
    int ret;

    if (RegOpenKeyExW(root, path, 0, KEY_READ, &key) != ERROR_SUCCESS)
    {
        output_message(STRING_CANNOT_FIND);
        return 1;
    }

    output_string(newlineW);

    if (value_name || value_empty)
    {
        ret = query_value(key, value_name, key_name, recurse);
        if (recurse)
            output_message(STRING_MATCHES_FOUND, num_values_found);
    }
    else
        ret = query_all(key, key_name, recurse);

    RegCloseKey(key);

    return ret;
}
