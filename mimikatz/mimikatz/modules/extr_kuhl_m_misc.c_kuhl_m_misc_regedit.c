
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int kuhl_m_misc_generic_nogpo_patch (char*,char*,int,char*,int) ;

NTSTATUS kuhl_m_misc_regedit(int argc, wchar_t * argv[])
{
 kuhl_m_misc_generic_nogpo_patch(L"regedit.exe", L"DisableRegistryTools", sizeof(L"DisableRegistryTools"), L"KiwiAndRegistryTools", sizeof(L"KiwiAndRegistryTools"));
 return STATUS_SUCCESS;
}
