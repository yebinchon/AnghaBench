
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int ARRAYSIZE (int ) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int TermSrvMultiRdpReferences ;
 int kull_m_patch_genericProcessOrServiceFromBuild (int ,int ,char*,char*,int ) ;

NTSTATUS kuhl_m_ts_multirdp(int argc, wchar_t * argv[])
{
 kull_m_patch_genericProcessOrServiceFromBuild(TermSrvMultiRdpReferences, ARRAYSIZE(TermSrvMultiRdpReferences), L"TermService", L"termsrv.dll", TRUE);
 return STATUS_SUCCESS;
}
