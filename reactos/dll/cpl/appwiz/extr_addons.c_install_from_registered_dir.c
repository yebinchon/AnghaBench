
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum install_res { ____Placeholder_install_res } install_res ;
struct TYPE_2__ {char* file_name; } ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ExpandEnvironmentStringsA (char*,char*,scalar_t__) ;
 int HKEY_CURRENT_USER ;
 int INSTALL_FAILED ;
 scalar_t__ MAX_PATH ;
 scalar_t__ REG_EXPAND_SZ ;
 scalar_t__ REG_SZ ;
 int RRF_RT_ANY ;
 scalar_t__ RegGetValueA (int ,int ,char*,int ,scalar_t__*,int ,scalar_t__*) ;
 int TRACE (char*,int ,int ) ;
 TYPE_1__* addon ;
 int debugstr_a (char*) ;
 char* heap_alloc (scalar_t__) ;
 int heap_free (char*) ;
 char* heap_realloc (char*,scalar_t__) ;
 int install_from_unix_file (char*,char*,char*) ;
 int mshtml_keyA ;

__attribute__((used)) static enum install_res install_from_registered_dir(void)
{
    char *package_dir;
    DWORD res, type, size = MAX_PATH;
    enum install_res ret;

    package_dir = heap_alloc(size + sizeof(addon->file_name));

    res = RegGetValueA(HKEY_CURRENT_USER, mshtml_keyA, "GeckoCabDir", RRF_RT_ANY, &type, (PBYTE)package_dir, &size);
    if(res == ERROR_MORE_DATA) {
        package_dir = heap_realloc(package_dir, size + sizeof(addon->file_name));
        res = RegGetValueA(HKEY_CURRENT_USER, mshtml_keyA, "GeckoCabDir", RRF_RT_ANY, &type, (PBYTE)package_dir, &size);
    }

    if(res != ERROR_SUCCESS || (type != REG_SZ && type != REG_EXPAND_SZ)) {
        heap_free(package_dir);
        return INSTALL_FAILED;
    }

    if (type == REG_EXPAND_SZ)
    {
        size = ExpandEnvironmentStringsA(package_dir, ((void*)0), 0);
        if (size)
        {
            char* buf = heap_alloc(size + sizeof(addon->file_name));
            ExpandEnvironmentStringsA(package_dir, buf, size);
            heap_free(package_dir);
            package_dir = buf;
        }
    }

    TRACE("Trying %s/%s\n", debugstr_a(package_dir), debugstr_a(addon->file_name));

    ret = install_from_unix_file(package_dir, "", addon->file_name);

    heap_free(package_dir);
    return ret;
}
