
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef scalar_t__ HKEY ;


 scalar_t__ HKEY_CLASSES_ROOT ;
 scalar_t__ HKEY_CURRENT_CONFIG ;
 scalar_t__ HKEY_CURRENT_USER ;
 scalar_t__ HKEY_DYN_DATA ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 scalar_t__ HKEY_USERS ;

extern LPCWSTR get_root_key_name(HKEY hRootKey)
{
    if (hRootKey == HKEY_CLASSES_ROOT) return L"HKEY_CLASSES_ROOT";
    if (hRootKey == HKEY_CURRENT_USER) return L"HKEY_CURRENT_USER";
    if (hRootKey == HKEY_LOCAL_MACHINE) return L"HKEY_LOCAL_MACHINE";
    if (hRootKey == HKEY_USERS) return L"HKEY_USERS";
    if (hRootKey == HKEY_CURRENT_CONFIG) return L"HKEY_CURRENT_CONFIG";
    if (hRootKey == HKEY_DYN_DATA) return L"HKEY_DYN_DATA";

    return L"UNKNOWN HKEY, PLEASE REPORT";
}
