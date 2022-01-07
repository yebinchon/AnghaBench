
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum install_res { ____Placeholder_install_res } install_res ;
typedef int WCHAR ;
typedef scalar_t__ ULONG ;


 int ERR (char*,scalar_t__) ;
 scalar_t__ ERROR_SUCCESS ;
 int INSTALL_FAILED ;
 int INSTALL_OK ;
 scalar_t__ MsiInstallProductW (int const*,int *) ;

__attribute__((used)) static enum install_res install_file(const WCHAR *file_name)
{
    ULONG res;

    res = MsiInstallProductW(file_name, ((void*)0));
    if(res != ERROR_SUCCESS) {
        ERR("MsiInstallProduct failed: %u\n", res);
        return INSTALL_FAILED;
    }

    return INSTALL_OK;
}
