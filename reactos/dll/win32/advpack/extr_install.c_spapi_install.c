
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int install_sec; int hinf; int * working_dir; } ;
typedef int * PVOID ;
typedef int HRESULT ;
typedef int BOOL ;
typedef TYPE_1__ ADVInfo ;


 int ADV_HRESULT (int ) ;
 int GetLastError () ;
 int * HKEY_LOCAL_MACHINE ;
 int INVALID_HANDLE_VALUE ;
 int SPINST_FILES ;
 int SPINST_INIFILES ;
 int SPINST_REGISTRY ;
 int SPINST_REGSVR ;
 int SP_COPY_NEWER ;
 int S_OK ;
 int * SetupDefaultQueueCallbackW ;
 int * SetupInitDefaultQueueCallbackEx (int *,int ,int ,int ,int *) ;
 int SetupInstallFromInfSectionW (int *,int ,int ,int,int *,int *,int ,int *,int *,int *,int *) ;
 int SetupTermDefaultQueueCallback (int *) ;

__attribute__((used)) static HRESULT spapi_install(const ADVInfo *info)
{
    BOOL ret;
    HRESULT res;
    PVOID context;

    context = SetupInitDefaultQueueCallbackEx(((void*)0), INVALID_HANDLE_VALUE, 0, 0, ((void*)0));
    if (!context)
        return ADV_HRESULT(GetLastError());

    ret = SetupInstallFromInfSectionW(((void*)0), info->hinf, info->install_sec,
                                      SPINST_FILES, ((void*)0), info->working_dir,
                                      SP_COPY_NEWER, SetupDefaultQueueCallbackW,
                                      context, ((void*)0), ((void*)0));
    if (!ret)
    {
        res = ADV_HRESULT(GetLastError());
        SetupTermDefaultQueueCallback(context);

        return res;
    }

    SetupTermDefaultQueueCallback(context);

    ret = SetupInstallFromInfSectionW(((void*)0), info->hinf, info->install_sec,
                                      SPINST_INIFILES | SPINST_REGISTRY | SPINST_REGSVR,
                                      HKEY_LOCAL_MACHINE, ((void*)0), 0,
                                      ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (!ret)
        return ADV_HRESULT(GetLastError());

    return S_OK;
}
