
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int install_sec; int hinf; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ ADVInfo ;


 int DelDirs ;
 int OleInitialize (int *) ;
 int OleUninitialize () ;
 int PerUserInstall ;
 int RegisterOCXs ;
 int RunPostSetupCommands ;
 int RunPreSetupCommands ;
 scalar_t__ S_OK ;
 scalar_t__ check_admin_rights (TYPE_1__*) ;
 int del_dirs_callback ;
 scalar_t__ iterate_section_fields (int ,int ,int ,int ,TYPE_1__*) ;
 int per_user_install_callback ;
 int register_ocxs_callback ;
 int run_setup_commands_callback ;

__attribute__((used)) static HRESULT adv_install(ADVInfo *info)
{
    HRESULT hr;

    hr = check_admin_rights(info);
    if (hr != S_OK)
        return hr;

    hr = iterate_section_fields(info->hinf, info->install_sec, RunPreSetupCommands,
                                run_setup_commands_callback, info);
    if (hr != S_OK)
        return hr;

    OleInitialize(((void*)0));
    hr = iterate_section_fields(info->hinf, info->install_sec,
                                RegisterOCXs, register_ocxs_callback, ((void*)0));
    OleUninitialize();
    if (hr != S_OK)
        return hr;

    hr = iterate_section_fields(info->hinf, info->install_sec,
                                PerUserInstall, per_user_install_callback, info);
    if (hr != S_OK)
        return hr;

    hr = iterate_section_fields(info->hinf, info->install_sec, RunPostSetupCommands,
                                run_setup_commands_callback, info);
    if (hr != S_OK)
        return hr;

    hr = iterate_section_fields(info->hinf, info->install_sec,
                                DelDirs, del_dirs_callback, info);
    if (hr != S_OK)
        return hr;

    return hr;
}
