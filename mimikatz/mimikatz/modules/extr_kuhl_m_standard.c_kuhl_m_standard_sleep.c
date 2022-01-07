
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NTSTATUS ;
typedef int DWORD ;


 int STATUS_SUCCESS ;
 int Sleep (int) ;
 int kprintf (char*,...) ;
 int wcstoul (int *,int *,int ) ;

NTSTATUS kuhl_m_standard_sleep(int argc, wchar_t * argv[])
{
 DWORD dwMilliseconds = argc ? wcstoul(argv[0], ((void*)0), 0) : 1000;
 kprintf(L"Sleep : %u ms... ", dwMilliseconds);
 Sleep(dwMilliseconds);
 kprintf(L"End !\n");
 return STATUS_SUCCESS;
}
