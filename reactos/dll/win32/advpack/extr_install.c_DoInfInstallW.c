
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dir; int section_name; int inf_name; } ;
typedef TYPE_1__ SETUPCOMMAND_PARAMSW ;
typedef scalar_t__ HRESULT ;
typedef int ADVInfo ;


 scalar_t__ S_OK ;
 int TRACE (char*,TYPE_1__ const*) ;
 int ZeroMemory (int *,int) ;
 scalar_t__ adv_install (int *) ;
 scalar_t__ install_init (int ,int ,int ,int ,int *) ;
 int install_release (int *) ;
 scalar_t__ spapi_install (int *) ;

__attribute__((used)) static HRESULT DoInfInstallW(const SETUPCOMMAND_PARAMSW *setup)
{
    ADVInfo info;
    HRESULT hr;

    TRACE("(%p)\n", setup);

    ZeroMemory(&info, sizeof(ADVInfo));

    hr = install_init(setup->inf_name, setup->section_name, setup->dir, 0, &info);
    if (hr != S_OK)
        goto done;

    hr = spapi_install(&info);
    if (hr != S_OK)
        goto done;

    hr = adv_install(&info);

done:
    install_release(&info);

    return S_OK;
}
