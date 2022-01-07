
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int ARRAYSIZE (int ) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kull_m_patch_genericProcessOrServiceFromBuild (int ,int ,char*,int *,int ) ;
 int ncRouteMonitorReferences ;

NTSTATUS kuhl_m_misc_ncroutemon(int argc, wchar_t * argv[])
{
 kull_m_patch_genericProcessOrServiceFromBuild(ncRouteMonitorReferences, ARRAYSIZE(ncRouteMonitorReferences), L"dsNcService", ((void*)0), TRUE);
 return STATUS_SUCCESS;
}
