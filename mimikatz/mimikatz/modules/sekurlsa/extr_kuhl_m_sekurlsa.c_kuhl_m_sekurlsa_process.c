
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;


 int STATUS_SUCCESS ;
 int kprintf (char*) ;
 int kuhl_m_sekurlsa_reset () ;

NTSTATUS kuhl_m_sekurlsa_process(int argc, wchar_t * argv[])
{
 kprintf(L"Switch to PROCESS\n");
 kuhl_m_sekurlsa_reset();
 return STATUS_SUCCESS;
}
