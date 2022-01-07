
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int install_sec; int hinf; } ;
typedef int INT ;
typedef int INFCONTEXT ;
typedef int HRESULT ;
typedef TYPE_1__ ADVInfo ;


 int CheckAdminRights ;
 int E_FAIL ;
 scalar_t__ IsNTAdmin (int ,int *) ;
 int S_OK ;
 int SetupFindFirstLineW (int ,int ,int ,int *) ;
 int SetupGetIntField (int *,int,int*) ;

__attribute__((used)) static HRESULT check_admin_rights(const ADVInfo *info)
{
    INT check;
    INFCONTEXT context;
    HRESULT hr = S_OK;

    if (!SetupFindFirstLineW(info->hinf, info->install_sec,
                             CheckAdminRights, &context))
        return S_OK;

    if (!SetupGetIntField(&context, 1, &check))
        return S_OK;

    if (check == 1)
        hr = IsNTAdmin(0, ((void*)0)) ? S_OK : E_FAIL;

    return hr;
}
